.class Lcom/android/server/wm/DisplayContent;
.super Lcom/android/server/wm/WindowContainer;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;,
        Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;,
        Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;,
        Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;,
        Lcom/android/server/wm/DisplayContent$Screenshoter;,
        Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;,
        Lcom/android/server/wm/DisplayContent$TaskStackContainers;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer",
        "<",
        "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field isDefaultDisplay:Z

.field private final mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

.field private mAltOrientation:Z

.field private final mApplyPostLayoutPolicy:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field private mBaseDisplayRect:Landroid/graphics/Rect;

.field mBaseDisplayWidth:I

.field private final mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

.field private final mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

.field mCompatibleScreenScale:F

.field private final mComputeImeTargetPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mContentRect:Landroid/graphics/Rect;

.field private mDeferredRemoval:Z

.field mDimLayerController:Lcom/android/server/wm/DimLayerController;

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplayReady:Z

.field mDisplayScalingDisabled:Z

.field final mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private final mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ToBooleanFunction",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mHaveApp:Z

.field private mHaveBootMsg:Z

.field private mHaveKeyguard:Z

.field private mHaveWallpaper:Z

.field private mHomeStack:Lcom/android/server/wm/TaskStack;

.field private final mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field mInputMethodAnimLayerAdjustment:I

.field private mLastKeyguardForcedOrientation:I

.field private mLastOrientation:I

.field private mLastWallpaperVisible:Z

.field private mLastWindowForcedOrientation:I

.field private final mLayersController:Lcom/android/server/wm/WindowLayersController;

.field private mLayoutNeeded:Z

.field private mMaxUiWidth:I

.field private final mPerformLayout:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerformLayoutAttached:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

.field private final mPrepareWindowSurfaces:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mRealDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mRemovingDisplay:Z

.field private mRotation:I

.field private final mScheduleToastTimeout:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

.field mService:Lcom/android/server/wm/WindowManagerService;

.field mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

.field final mTapExcludedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

.field private final mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

.field private final mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mTmpInitial:Z

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private mTmpRecoveringMemory:Z

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRectF:Landroid/graphics/RectF;

.field private final mTmpRegion:Landroid/graphics/Region;

.field private final mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

.field private final mTmpUpdateAllDrawn:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpWindow:Lcom/android/server/wm/WindowState;

.field private mTmpWindow2:Lcom/android/server/wm/WindowState;

.field private mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

.field private final mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExcludeRegion:Landroid/graphics/Region;

.field private mUpdateImeTarget:Z

.field private final mUpdateWallpaperForAnimator:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateWindowsForAnimator:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mWallpaperController:Lcom/android/server/wm/WallpaperController;

.field pendingLayoutChanges:I


# direct methods
.method static synthetic -com_android_server_wm_DisplayContent-mthref-0(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;
    .registers 8

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -com_android_server_wm_DisplayContent-mthref-1(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/GraphicBuffer;
    .registers 8

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->screenshotToBuffer(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -get0(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/TaskStack;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/DisplayContent;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/DisplayContent;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskStack;)Lcom/android/server/wm/TaskStack;
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/wm/DisplayContent;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wm/DisplayContent;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    return p1
.end method

.method constructor <init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowLayersController;Lcom/android/server/wm/WallpaperController;)V
    .registers 11

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowContainer;-><init>()V

    new-instance v2, Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent$TaskStackContainers;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    new-instance v2, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    const-string/jumbo v3, "mAboveAppWindowsContainers"

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    new-instance v2, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    const-string/jumbo v3, "mBelowAppWindowsContainers"

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    new-instance v2, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    const-string/jumbo v3, "mImeWindowsContainers"

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iput v5, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    iput v5, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    iput v5, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    new-instance v2, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    new-instance v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    invoke-direct {v2, v4}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;-><init>(Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    new-instance v2, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    invoke-direct {v2, v4}, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;-><init>(Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    new-instance v2, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWallpaperForAnimator:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/server/wm/-$Lambda$psVPwlhNMKqaqrehEaX4d05CDXY;

    invoke-direct {v2, v0, p0}, Lcom/android/server/wm/-$Lambda$psVPwlhNMKqaqrehEaX4d05CDXY;-><init>(BLjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    sget-object v2, Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;->$INST$0:Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPrepareWindowSurfaces:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/4 v3, 0x6

    invoke-direct {v2, v3, p0}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/4 v3, 0x7

    invoke-direct {v2, v3, p0}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM;

    invoke-direct {v2, v0, p0}, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM;-><init>(BLjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Ljava/util/function/Predicate;

    new-instance v2, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/16 v3, 0x8

    invoke-direct {v2, v3, p0}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/16 v3, 0x9

    invoke-direct {v2, v3, p0}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_174

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Display with ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " already exists="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_174
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput-object p3, p0, Lcom/android/server/wm/DisplayContent;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    iput-object p4, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v2, :cond_18f

    move v0, v1

    :cond_18f
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->initializeDisplayBaseInfo()V

    new-instance v0, Lcom/android/server/wm/DockedStackDividerController;

    invoke-direct {v0, p2, p0}, Lcom/android/server/wm/DockedStackDividerController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    new-instance v0, Lcom/android/server/wm/PinnedStackController;

    invoke-direct {v0, p2, p0}, Lcom/android/server/wm/PinnedStackController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    new-instance v0, Lcom/android/server/wm/DimLayerController;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DimLayerController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-super {p0, v0, v4}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-super {p0, v0, v4}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-super {p0, v0, v4}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-super {p0, v0, v4}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p0, v4}, Lcom/android/server/wm/RootWindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    return-void
.end method

.method private addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_4b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t map token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " already mapped to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " tokens="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4b
    if-nez p1, :cond_7d

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t map token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " binder is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7d
    if-nez p2, :cond_a8

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t map null token to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " binder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a8
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_bd

    iget v1, p2, Lcom/android/server/wm/WindowToken;->windowType:I

    packed-switch v1, :pswitch_data_ca

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    :cond_bd
    :goto_bd
    return-void

    :pswitch_be
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    goto :goto_bd

    :pswitch_c4
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    goto :goto_bd

    :pswitch_data_ca
    .packed-switch 0x7db
        :pswitch_c4
        :pswitch_c4
        :pswitch_be
    .end packed-switch
.end method

.method private adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIII)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move v1, p5

    move v2, p6

    move v3, p3

    move v4, p4

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(IIIII)I

    move-result v7

    iget v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ge v7, v0, :cond_13

    iput v7, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    :cond_13
    iget v0, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-le v7, v0, :cond_19

    iput v7, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move v1, p5

    move v2, p6

    move v3, p3

    move v4, p4

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(IIIII)I

    move-result v6

    iget v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ge v6, v0, :cond_2c

    iput v6, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    :cond_2c
    iget v0, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-le v6, v0, :cond_32

    iput v6, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    :cond_32
    return-void
.end method

.method private clearLayoutNeeded()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    return-void
.end method

.method private computeCompatSmallestWidth(ZIIII)I
    .registers 21

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz p1, :cond_40

    move/from16 v5, p4

    move/from16 v6, p3

    :goto_f
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move/from16 v3, p2

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;III)I

    move-result v8

    const/4 v9, 0x1

    move-object v7, p0

    move/from16 v10, p2

    move-object v11, v4

    move v12, v6

    move v13, v5

    move/from16 v14, p5

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;III)I

    move-result v8

    const/4 v2, 0x2

    move-object v0, p0

    move v1, v8

    move/from16 v3, p2

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;III)I

    move-result v8

    const/4 v9, 0x3

    move-object v7, p0

    move/from16 v10, p2

    move-object v11, v4

    move v12, v6

    move v13, v5

    move/from16 v14, p5

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;III)I

    move-result v8

    return v8

    :cond_40
    move/from16 v5, p3

    move/from16 v6, p4

    goto :goto_f
.end method

.method private computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;IZIIIFLandroid/content/res/Configuration;)V
    .registers 25

    if-eqz p3, :cond_a3

    move/from16 v6, p6

    move/from16 v7, p5

    :goto_6
    const/high16 v1, 0x40000000    # 2.0f

    move-object/from16 v0, p1

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    move-object/from16 v0, p1

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIII)V

    const/4 v11, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v12, p4

    move v13, v7

    move v14, v6

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIII)V

    const/4 v4, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIII)V

    const/4 v11, 0x3

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v12, p4

    move v13, v7

    move v14, v6

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIII)V

    move-object/from16 v0, p8

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v2, p0

    move/from16 v5, p7

    move/from16 v8, p4

    move/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIII)I

    move-result v3

    const/4 v10, 0x1

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v11, p7

    move v12, v7

    move v13, v6

    move/from16 v14, p4

    move/from16 v15, p2

    invoke-direct/range {v8 .. v15}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIII)I

    move-result v3

    const/4 v4, 0x2

    move-object/from16 v2, p0

    move/from16 v5, p7

    move/from16 v8, p4

    move/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIII)I

    move-result v3

    const/4 v10, 0x3

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v11, p7

    move v12, v7

    move v13, v6

    move/from16 v14, p4

    move/from16 v15, p2

    invoke-direct/range {v8 .. v15}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIII)I

    move-result v3

    move-object/from16 v0, p1

    iget v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    int-to-float v1, v1

    div-float v1, v1, p7

    float-to-int v1, v1

    move-object/from16 v0, p8

    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object/from16 v0, p8

    iput v3, v0, Landroid/content/res/Configuration;->screenLayout:I

    return-void

    :cond_a3
    move/from16 v6, p5

    move/from16 v7, p6

    goto/16 :goto_6
.end method

.method private static convertCropForSurfaceFlinger(Landroid/graphics/Rect;III)V
    .registers 6

    const/4 v1, 0x1

    if-ne p1, v1, :cond_18

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    :cond_17
    :goto_17
    return-void

    :cond_18
    const/4 v1, 0x2

    if-ne p1, v1, :cond_34

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    sub-int v1, p3, v0

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p2, v0

    iput v1, p0, Landroid/graphics/Rect;->left:I

    goto :goto_17

    :cond_34
    const/4 v1, 0x3

    if-ne p1, v1, :cond_17

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v0

    iput v1, p0, Landroid/graphics/Rect;->right:I

    goto :goto_17
.end method

.method static createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V
    .registers 8

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_26

    :goto_4
    return-void

    :pswitch_5
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    goto :goto_4

    :pswitch_9
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p5, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {p5, v1, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p5, p2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    :pswitch_15
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    goto :goto_4

    :pswitch_19
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p5, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {p5, p3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    neg-float v0, p2

    invoke-virtual {p5, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_5
        :pswitch_19
        :pswitch_15
        :pswitch_9
    .end packed-switch
.end method

.method private static createRotationMatrix(IFFLandroid/graphics/Matrix;)V
    .registers 10

    const/4 v1, 0x0

    move v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V

    return-void
.end method

.method static deltaRotation(II)I
    .registers 3

    sub-int v0, p1, p0

    if-gez v0, :cond_6

    add-int/lit8 v0, v0, 0x4

    :cond_6
    return v0
.end method

.method private getLogicalDisplayRect(Landroid/graphics/Rect;I)V
    .registers 8

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2d

    :cond_11
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFLandroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    :cond_2d
    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_100896(ILcom/android/server/wm/WindowState;)Z
    .registers 3

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_9

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_101075(ILcom/android/server/wm/WindowState;)Z
    .registers 4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_17

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_17

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_113837(Ljava/io/PrintWriter;Ljava/lang/String;[ILcom/android/server/wm/WindowState;)V
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Window #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    aget v1, p2, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v3

    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_114140(Ljava/io/FileDescriptor;Lcom/android/server/wm/WindowState;)V
    .registers 3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowStateAnimator;->enableSurfaceTrace(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_114304(Lcom/android/server/wm/WindowState;)V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->disableSurfaceTrace()V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_114690(Landroid/view/WindowManagerPolicy;ZZLcom/android/server/wm/WindowState;)V
    .registers 6

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_21

    invoke-interface {p0, p3}, Landroid/view/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-interface {p0, p1, p2}, Landroid/view/WindowManagerPolicy;->createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_21
    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_119440(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_119626(IILcom/android/server/wm/WindowState;)V
    .registers 9

    :try_start_0
    iget v0, p2, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    xor-int v4, v0, p0

    and-int v1, v4, p1

    not-int v4, v1

    and-int/2addr v4, v0

    and-int v5, p0, v1

    or-int v3, v4, v5

    if-eq v3, v0, :cond_16

    iget v4, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    iput v3, p2, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    :cond_16
    if-ne v3, v0, :cond_1e

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v4, v4, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v4, :cond_25

    :cond_1e
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v5, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-interface {v4, v5, p0, v3, v1}, Landroid/view/IWindow;->dispatchSystemUiVisibilityChanged(IIII)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_26

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception v2

    goto :goto_25
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_23266(Lcom/android/server/wm/WindowState;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_44671(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    return v0
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_49835(IILcom/android/server/wm/WindowState;)V
    .registers 4

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->seamlesslyRotateWindow(II)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_DisplayContent_93462(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;III)I
    .registers 16

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move v1, p5

    move v2, p6

    move v3, p2

    move v4, p3

    move v5, p7

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(IIIII)I

    move-result v0

    iput v0, p4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move v1, p5

    move v2, p6

    move v3, p2

    move v4, p3

    move v5, p7

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(IIIII)I

    move-result v0

    iput v0, p4, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    const/4 v0, 0x0

    invoke-static {p4, v0}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v6

    iget v0, p4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    iget v1, p4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v7, v0

    if-eqz p1, :cond_32

    if-ge v7, p1, :cond_33

    :cond_32
    move p1, v7

    :cond_33
    return p1
.end method

.method private reduceConfigLayout(IIFIIII)I
    .registers 19

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move v1, p4

    move/from16 v2, p5

    move v3, p2

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(IIIII)I

    move-result v10

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move v1, p4

    move/from16 v2, p5

    move v3, p2

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(IIIII)I

    move-result v6

    move v7, v10

    move v8, v6

    if-ge v10, v6, :cond_27

    move v9, v10

    move v7, v6

    move v8, v10

    :cond_27
    int-to-float v0, v7

    div-float/2addr v0, p3

    float-to-int v7, v0

    int-to-float v0, v8

    div-float/2addr v0, p3

    float-to-int v8, v0

    invoke-static {p1, v7, v8}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v0

    return v0
.end method

.method private resetAnimationBackgroundAnimator()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private resetDimming()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayerController;->resetDimming()V

    return-void
.end method

.method private screenshotApplications(Landroid/os/IBinder;IIZFZZLcom/android/server/wm/DisplayContent$Screenshoter;)Ljava/lang/Object;
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/IBinder;",
            "IIZFZZ",
            "Lcom/android/server/wm/DisplayContent$Screenshoter",
            "<TE;>;)TE;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v24, v0

    if-eqz v26, :cond_14

    if-nez v24, :cond_16

    :cond_14
    const/4 v3, 0x0

    return-object v3

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    if-nez p1, :cond_61

    xor-int/lit8 v3, p6, 0x1

    :goto_1e
    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->reset(Z)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/lit16 v3, v3, 0x2710

    add-int/lit16 v6, v3, 0x3e8

    new-instance v9, Landroid/util/MutableBoolean;

    move/from16 v0, p4

    invoke-direct {v9, v0}, Landroid/util/MutableBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v30, v0

    monitor-enter v30

    :try_start_4c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_152

    move-result v3

    if-nez v3, :cond_63

    const/4 v3, 0x0

    monitor-exit v30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    :cond_61
    const/4 v3, 0x0

    goto :goto_1e

    :cond_63
    :try_start_63
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->appWin:Lcom/android/server/wm/WindowState;

    new-instance v3, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$7;

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {v3 .. v11}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$7;-><init>(ZZILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iget-object v0, v3, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->appWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iget-boolean v0, v3, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->screenshotReady:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iget v0, v3, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->maxLayer:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iget v0, v3, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->minLayer:I

    move/from16 v16, v0
    :try_end_9d
    .catchall {:try_start_63 .. :try_end_9d} :catchall_152

    if-eqz p1, :cond_a7

    if-nez v20, :cond_a7

    const/4 v3, 0x0

    monitor-exit v30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    :cond_a7
    if-nez v28, :cond_fc

    :try_start_a9
    const-string/jumbo v4, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to capture screenshot of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " appWin="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v20, :cond_db

    const-string/jumbo v3, "null"

    :goto_ca
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catchall {:try_start_a9 .. :try_end_d5} :catchall_152

    const/4 v3, 0x0

    monitor-exit v30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    :cond_db
    :try_start_db
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " drawState="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_fa
    .catchall {:try_start_db .. :try_end_fa} :catchall_152

    move-result-object v3

    goto :goto_ca

    :cond_fc
    if-nez v17, :cond_104

    const/4 v3, 0x0

    monitor-exit v30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    :cond_104
    :try_start_104
    iget-boolean v3, v9, Landroid/util/MutableBoolean;->value:Z

    if-nez v3, :cond_158

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v25

    if-eqz v20, :cond_13f

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLastVisibleLayoutRotation:I

    move/from16 v29, v0

    :goto_118
    if-nez v25, :cond_142

    const/4 v3, 0x1

    move/from16 v0, v29

    if-eq v0, v3, :cond_124

    const/4 v3, 0x3

    move/from16 v0, v29

    if-ne v0, v3, :cond_142

    :cond_124
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v10, v3, v4, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v3

    if-nez v3, :cond_133

    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    :cond_133
    :goto_133
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z
    :try_end_136
    .catchall {:try_start_104 .. :try_end_136} :catchall_152

    move-result v3

    if-eqz v3, :cond_162

    const/4 v3, 0x0

    monitor-exit v30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    :cond_13f
    const/16 v29, -0x1

    goto :goto_118

    :cond_142
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_144
    move/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v10, v3, v4, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v3

    if-nez v3, :cond_133

    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_151
    .catchall {:try_start_144 .. :try_end_151} :catchall_152

    goto :goto_133

    :catchall_152
    move-exception v3

    monitor-exit v30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    :cond_158
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_15a
    move/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v10, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_133

    :cond_162
    if-gez p2, :cond_16e

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p5

    float-to-int v0, v3

    move/from16 p2, v0

    :cond_16e
    if-gez p3, :cond_17a

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p5

    float-to-int v0, v3

    move/from16 p3, v0

    :cond_17a
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move/from16 v0, p2

    int-to-float v3, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    move/from16 v0, p3

    int-to-float v4, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_22c

    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float/2addr v3, v4

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v23, v0

    iget v3, v13, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v23

    iput v3, v13, Landroid/graphics/Rect;->right:I

    :goto_1ab
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v19

    const/4 v3, 0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_1bd

    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_1c4

    :cond_1bd
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_244

    const/16 v19, 0x3

    :cond_1c4
    :goto_1c4
    move/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v24

    invoke-static {v13, v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->convertCropForSurfaceFlinger(Landroid/graphics/Rect;III)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v27

    if-eqz v27, :cond_248

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v18

    :goto_1de
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransactionSync()V

    move-object/from16 v12, p8

    move/from16 v14, p2

    move/from16 v15, p3

    invoke-interface/range {v12 .. v19}, Lcom/android/server/wm/DisplayContent$Screenshoter;->screenshot(Landroid/graphics/Rect;IIIIZI)Ljava/lang/Object;

    move-result-object v21

    if-nez v21, :cond_24b

    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Screenshot failure taking screenshot for ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") to layer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_226
    .catchall {:try_start_15a .. :try_end_226} :catchall_152

    const/4 v3, 0x0

    monitor-exit v30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    :cond_22c
    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p2

    int-to-float v4, v0

    div-float/2addr v3, v4

    :try_start_233
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v22, v0

    iget v3, v13, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v22

    iput v3, v13, Landroid/graphics/Rect;->bottom:I
    :try_end_242
    .catchall {:try_start_233 .. :try_end_242} :catchall_152

    goto/16 :goto_1ab

    :cond_244
    const/16 v19, 0x1

    goto/16 :goto_1c4

    :cond_248
    const/16 v18, 0x0

    goto :goto_1de

    :cond_24b
    monitor-exit v30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v21
.end method

.method private setInputMethodTarget(Lcom/android/server/wm/WindowState;ZI)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    if-ne v0, p2, :cond_11

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodAnimLayerAdjustment:I

    if-ne v0, p3, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p2, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayContent;->setInputMethodAnimLayerAdjustment(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    return-void
.end method

.method private stopDimmingIfNeeded()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayerController;->stopDimmingIfNeeded()V

    return-void
.end method

.method private updateBaseDisplayMetricsIfNeeded()V
    .registers 12

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v8, v9, v10}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v8, Landroid/view/DisplayInfo;->rotation:I

    const/4 v8, 0x1

    if-eq v6, v8, :cond_15

    const/4 v8, 0x3

    if-ne v6, v8, :cond_62

    :cond_15
    const/4 v7, 0x1

    :goto_16
    if-eqz v7, :cond_64

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_1c
    if-eqz v7, :cond_69

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_22
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v8, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-ne v8, v5, :cond_2e

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-eq v8, v4, :cond_6e

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    if-eqz v0, :cond_61

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-ne v8, v9, :cond_7a

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-eq v8, v9, :cond_7c

    const/4 v2, 0x1

    :goto_3e
    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    if-eq v8, v9, :cond_7e

    const/4 v1, 0x1

    :goto_45
    if-eqz v2, :cond_80

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move v10, v8

    :goto_4a
    if-eqz v2, :cond_82

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move v9, v8

    :goto_4f
    if-eqz v1, :cond_84

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    :goto_53
    invoke-virtual {p0, v10, v9, v8}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    iput v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, p0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    :cond_61
    return-void

    :cond_62
    const/4 v7, 0x0

    goto :goto_16

    :cond_64
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_1c

    :cond_69
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_22

    :cond_6e
    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v9, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-eq v8, v9, :cond_78

    const/4 v0, 0x1

    goto :goto_2f

    :cond_78
    const/4 v0, 0x0

    goto :goto_2f

    :cond_7a
    const/4 v2, 0x1

    goto :goto_3e

    :cond_7c
    const/4 v2, 0x0

    goto :goto_3e

    :cond_7e
    const/4 v1, 0x0

    goto :goto_45

    :cond_80
    move v10, v5

    goto :goto_4a

    :cond_82
    move v9, v4

    goto :goto_4f

    :cond_84
    move v8, v3

    goto :goto_53
.end method

.method private updateDisplayAndOrientation(I)Landroid/view/DisplayInfo;
    .registers 16

    const/4 v13, 0x0

    const v4, 0x3fa66666    # 1.3f

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_e

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_9e

    :cond_e
    const/4 v12, 0x1

    :goto_f
    if-eqz v12, :cond_a1

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_13
    if-eqz v12, :cond_a5

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_17
    move v1, v11

    move v2, v10

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    if-eqz v0, :cond_25

    if-le v11, v10, :cond_a9

    int-to-float v0, v10

    div-float/2addr v0, v4

    float-to-int v9, v0

    if-ge v9, v11, :cond_25

    move v1, v9

    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(IIIII)I

    move-result v7

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(IIIII)I

    move-result v6

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iput v3, v0, Landroid/view/DisplayInfo;->rotation:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iput v3, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v7, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v0, Landroid/view/DisplayInfo;->appHeight:I

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    sget-object v4, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    :cond_69
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v3}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Landroid/view/DisplayInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/DisplayInfo;->flags:I

    :goto_7d
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v3, v4}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v13, v13, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v3}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    :cond_9b
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0

    :cond_9e
    const/4 v12, 0x0

    goto/16 :goto_f

    :cond_a1
    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto/16 :goto_13

    :cond_a5
    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto/16 :goto_17

    :cond_a9
    int-to-float v0, v11

    div-float/2addr v0, v4

    float-to-int v8, v0

    if-ge v8, v10, :cond_25

    move v2, v8

    goto/16 :goto_25

    :cond_b1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Landroid/view/DisplayInfo;->flags:I

    const v4, -0x40000001    # -1.9999999f

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/DisplayInfo;->flags:I

    goto :goto_7d
.end method


# virtual methods
.method protected addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;I)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "See DisplayChildWindowContainer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Ljava/util/Comparator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "See DisplayChildWindowContainer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 3

    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;I)V

    return-void
.end method

.method protected bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V
    .registers 3

    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Ljava/util/Comparator;)V

    return-void
.end method

.method addStackToDisplay(IZ)Lcom/android/server/wm/TaskStack;
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_20

    iput-boolean v3, v0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    if-eqz p2, :cond_1d

    const v1, 0x7fffffff

    :goto_10
    invoke-virtual {v2, v1, v0, v3}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->positionChildAt(ILcom/android/server/wm/TaskStack;Z)V

    :goto_13
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    :cond_1c
    return-object v0

    :cond_1d
    const/high16 v1, -0x80000000

    goto :goto_10

    :cond_20
    new-instance v0, Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V

    goto :goto_13
.end method

.method adjustForImeIfNeeded()V
    .registers 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_9d

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v19

    :goto_12
    const/4 v1, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v18

    if-eqz v10, :cond_a1

    if-eqz v18, :cond_a1

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v15

    :goto_29
    const/4 v1, 0x2

    if-ne v15, v1, :cond_a3

    const/16 v17, 0x1

    :goto_2e
    const/4 v1, 0x4

    if-ne v15, v1, :cond_a6

    const/4 v2, 0x1

    :goto_32
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->getInputMethodWindowVisibleHeightLw()I

    move-result v6

    if-eqz v19, :cond_ab

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->getImeHeightAdjustedFor()I

    move-result v1

    if-eq v6, v1, :cond_a8

    const/16 v16, 0x1

    :goto_52
    if-eqz v19, :cond_cd

    if-eqz v10, :cond_cd

    if-nez v17, :cond_5a

    if-eqz v2, :cond_cd

    :cond_5a
    xor-int/lit8 v1, v13, 0x1

    if-eqz v1, :cond_cd

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v1

    add-int/lit8 v14, v1, -0x1

    :goto_68
    if-ltz v14, :cond_ba

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v14}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/TaskStack;

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_ae

    const/16 v20, 0x1

    :goto_7d
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_b3

    if-nez v2, :cond_87

    if-eqz v20, :cond_b3

    :cond_87
    move-object/from16 v0, v21

    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->isStackAffectedByDragResizing(I)Z

    move-result v1

    if-eqz v1, :cond_b3

    if-eqz v2, :cond_b1

    move/from16 v1, v16

    :goto_95
    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v1}, Lcom/android/server/wm/TaskStack;->setAdjustedForIme(Lcom/android/server/wm/WindowState;Z)V

    :goto_9a
    add-int/lit8 v14, v14, -0x1

    goto :goto_68

    :cond_9d
    const/16 v19, 0x0

    goto/16 :goto_12

    :cond_a1
    const/4 v15, -0x1

    goto :goto_29

    :cond_a3
    const/16 v17, 0x0

    goto :goto_2e

    :cond_a6
    const/4 v2, 0x0

    goto :goto_32

    :cond_a8
    const/16 v16, 0x0

    goto :goto_52

    :cond_ab
    const/16 v16, 0x0

    goto :goto_52

    :cond_ae
    const/16 v20, 0x0

    goto :goto_7d

    :cond_b1
    const/4 v1, 0x0

    goto :goto_95

    :cond_b3
    const/4 v1, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    goto :goto_9a

    :cond_ba
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DockedStackDividerController;->setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V

    :goto_c3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    move/from16 v0, v19

    invoke-virtual {v1, v0, v6}, Lcom/android/server/wm/PinnedStackController;->setAdjustedForIme(ZI)V

    return-void

    :cond_cd
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v1

    add-int/lit8 v14, v1, -0x1

    :goto_d7
    if-ltz v14, :cond_ed

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v14}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/TaskStack;

    xor-int/lit8 v1, v10, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    add-int/lit8 v14, v14, -0x1

    goto :goto_d7

    :cond_ed
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v11, v5

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/DockedStackDividerController;->setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V

    goto :goto_c3
.end method

.method animateDimLayers()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayerController;->animateDimLayers()Z

    move-result v0

    return v0
.end method

.method animateForIme(FFF)Z
    .registers 12

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_d
    if-ltz v0, :cond_5f

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_24

    :cond_21
    :goto_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_24
    cmpl-float v3, p1, v6

    if-ltz v3, :cond_3d

    cmpl-float v3, p2, v5

    if-nez v3, :cond_3d

    cmpl-float v3, p3, v5

    if-nez v3, :cond_3d

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    const/4 v2, 0x1

    :goto_35
    cmpl-float v3, p1, v6

    if-ltz v3, :cond_21

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->endImeAdjustAnimation()V

    goto :goto_21

    :cond_3d
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedAnimationValue(F)F

    move-result v4

    iput v4, v3, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedDividerValue(F)F

    move-result v4

    iput v4, v3, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget v3, v3, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget v4, v4, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    invoke-virtual {v1, v3, v4, v7}, Lcom/android/server/wm/TaskStack;->updateAdjustForIme(FFZ)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_35

    :cond_5f
    return v2
.end method

.method applySurfaceChangesTransaction(Z)Z
    .registers 14

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v9, 0x0

    :goto_14
    add-int/lit8 v9, v9, 0x1

    const/4 v0, 0x6

    if-le v9, v0, :cond_72

    sget-object v0, Lcom/android/server/wm/DisplayContent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Animation repeat aborted after too many iterations"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearLayoutNeeded()V

    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->reset()V

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->resetDimming()V

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRecoveringMemory:Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0, v5}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v3, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v4, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayProperties(IZFIZ)V

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->stopDimmingIfNeeded()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v11

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    if-eq v11, v0, :cond_5e

    iput-boolean v11, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperVisibilityListeners;->notifyWallpaperVisibilityChanged(Lcom/android/server/wm/DisplayContent;)V

    :cond_5e
    :goto_5e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ed

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->updateAllDrawn()V

    goto :goto_5e

    :cond_72
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_81

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows(Lcom/android/server/wm/DisplayContent;)V

    :cond_81
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_ab

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v5, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(ZI)Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_ab
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b4

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_b4
    const/4 v0, 0x4

    if-ge v9, v0, :cond_e4

    if-ne v9, v5, :cond_e2

    move v0, v5

    :goto_ba
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    :goto_bd
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_dc

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, v8, v7}, Landroid/view/WindowManagerPolicy;->beginPostLayoutPolicyLw(II)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0, v5}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->finishPostLayoutPolicyLw()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_dc
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-eqz v0, :cond_24

    goto/16 :goto_14

    :cond_e2
    move v0, v1

    goto :goto_ba

    :cond_e4
    sget-object v0, Lcom/android/server/wm/DisplayContent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Layout repeat skipped after too many iterations"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    :cond_ed
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->focusDisplayed:Z

    return v0
.end method

.method assignWindowLayers(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowLayersController;->assignWindowLayers(Lcom/android/server/wm/DisplayContent;)V

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_a
    return-void
.end method

.method beginImeAdjustAnimation()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_24

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->beginImeAdjustAnimation()V

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_24
    return-void
.end method

.method canAddToastWindowForUid(I)Z
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v4, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;

    invoke-direct {v4, v3, p1}, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;-><init>(BI)V

    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_e

    return v2

    :cond_e
    new-instance v4, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;

    invoke-direct {v4, v2, p1}, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;-><init>(BI)V

    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_1a

    :goto_19
    return v2

    :cond_1a
    move v2, v3

    goto :goto_19
.end method

.method checkCompleteDeferredRemoval()Z
    .registers 4

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->checkCompleteDeferredRemoval()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->onDisplayRemoved(I)V

    const/4 v1, 0x0

    return v1

    :cond_16
    const/4 v1, 0x1

    return v1
.end method

.method checkWaitingForWindows()Z
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    iput-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    iput-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    iput-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    new-instance v2, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM;

    invoke-direct {v2, v5, p0}, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_16

    return v5

    :cond_16
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_a6

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    xor-int/lit8 v1, v2, 0x1

    :goto_2d
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "******** booted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " haveBoot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " haveApp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " haveWall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " wallEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " haveKeyguard="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v2, :cond_a8

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a8

    return v5

    :cond_a6
    const/4 v1, 0x0

    goto :goto_2d

    :cond_a8
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v2, :cond_c1

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    if-nez v2, :cond_b8

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_c0

    :cond_b8
    if-eqz v1, :cond_c1

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_c1

    :cond_c0
    return v5

    :cond_c1
    return v6
.end method

.method clearImeAdjustAnimation()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_9
    if-ltz v1, :cond_23

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    const/4 v0, 0x1

    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_23
    return v0
.end method

.method computeImeTarget(Z)Lcom/android/server/wm/WindowState;
    .registers 13

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_13

    if-eqz p1, :cond_12

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    invoke-direct {p0, v9, v6, v7}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;ZI)V

    :cond_12
    return-object v9

    :cond_13
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeTarget:Z

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Ljava/util/function/Predicate;

    invoke-virtual {p0, v6}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_2f

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x3

    if-ne v6, v8, :cond_2f

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_2f

    invoke-virtual {v5, v4}, Lcom/android/server/wm/AppWindowToken;->getImeTargetBelowWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_2f

    move-object v4, v1

    :cond_2f
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result v6

    if-eqz v6, :cond_4a

    if-eqz v4, :cond_49

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_4a

    :cond_49
    return-object v2

    :cond_4a
    if-nez v4, :cond_56

    if-eqz p1, :cond_55

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    invoke-direct {p0, v9, v6, v7}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;ZI)V

    :cond_55
    return-object v9

    :cond_56
    if-eqz p1, :cond_a8

    if-nez v2, :cond_80

    const/4 v5, 0x0

    :goto_5b
    if-eqz v5, :cond_9b

    const/4 v3, 0x0

    iget-object v6, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v6, v6, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v6, :cond_6a

    iget-object v6, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_6e

    :cond_6a
    invoke-virtual {v5, v2}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayerWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    :cond_6e
    if-eqz v3, :cond_9b

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v6

    if-eqz v6, :cond_83

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodAnimLayerAdjustment:I

    invoke-direct {p0, v3, v10, v6}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;ZI)V

    return-object v3

    :cond_80
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_5b

    :cond_83
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v6

    if-eqz v6, :cond_9b

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v6, v8, :cond_9b

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodAnimLayerAdjustment:I

    invoke-direct {p0, v3, v10, v6}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;ZI)V

    return-object v3

    :cond_9b
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_a9

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->getAnimLayerAdjustment()I

    move-result v6

    :goto_a5
    invoke-direct {p0, v4, v7, v6}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;ZI)V

    :cond_a8
    return-object v4

    :cond_a9
    move v6, v7

    goto :goto_a5
.end method

.method computeScreenConfiguration(Landroid/content/res/Configuration;)V
    .registers 29

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->uiMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(I)Landroid/view/DisplayInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v4, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    if-gt v4, v5, :cond_1a1

    const/4 v3, 0x1

    :goto_15
    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/DisplayInfo;->rotation:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/content/res/Configuration;->uiMode:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface/range {v3 .. v8}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(IIIII)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v6

    float-to-int v3, v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/DisplayInfo;->rotation:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/content/res/Configuration;->uiMode:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface/range {v3 .. v8}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(IIIII)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v6

    float-to-int v3, v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/DisplayInfo;->rotation:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {v3, v6, v4, v5, v7}, Landroid/view/WindowManagerPolicy;->getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    add-int v3, v3, v21

    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/DisplayInfo;->appHeight:I

    add-int v6, v6, v26

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/content/res/Configuration;->setAppBounds(IIII)V

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_1a4

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1a7

    const/4 v9, 0x1

    :goto_a4
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/content/res/Configuration;->uiMode:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v13, v3, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move v11, v4

    move v12, v5

    move-object/from16 v14, p1

    invoke-direct/range {v6 .. v14}, Lcom/android/server/wm/DisplayContent;->computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;IZIIIFLandroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v3, -0x301

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1aa

    const/16 v3, 0x200

    :goto_cd
    or-int/2addr v3, v6

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->screenLayout:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v3, v6

    float-to-int v3, v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v3, v6

    float-to-int v3, v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/content/res/Configuration;->uiMode:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move-object/from16 v8, p0

    move v11, v4

    move v12, v5

    invoke-direct/range {v8 .. v13}, Lcom/android/server/wm/DisplayContent;->computeCompatSmallestWidth(ZIIII)I

    move-result v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual/range {v17 .. v17}, Landroid/view/DisplayInfo;->isHdr()Z

    move-result v3

    if-eqz v3, :cond_1ae

    const/16 v3, 0x8

    :goto_114
    invoke-virtual/range {v17 .. v17}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v6

    if-eqz v6, :cond_1b1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->hasWideColorGamutSupport()Z

    move-result v6

    if-eqz v6, :cond_1b1

    const/4 v6, 0x2

    :goto_125
    or-int/2addr v3, v6

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->colorMode:I

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->touchscreen:I

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->navigation:I

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService;->getInputDevices()[Landroid/view/InputDevice;

    move-result-object v16

    if-eqz v16, :cond_1b4

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    :goto_14e
    const/16 v19, 0x0

    :goto_150
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_1d7

    aget-object v15, v16, v19

    invoke-virtual {v15}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_19e

    invoke-virtual {v15}, Landroid/view/InputDevice;->getSources()I

    move-result v25

    invoke-virtual {v15}, Landroid/view/InputDevice;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_1b7

    const/16 v24, 0x2

    :goto_16a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    if-eqz v3, :cond_1ba

    move/from16 v0, v25

    and-int/lit16 v3, v0, 0x1002

    const/16 v6, 0x1002

    if-ne v3, v6, :cond_17f

    const/4 v3, 0x3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->touchscreen:I

    :cond_17f
    :goto_17f
    const v3, 0x10004

    and-int v3, v3, v25

    const v6, 0x10004

    if-ne v3, v6, :cond_1c0

    const/4 v3, 0x3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->navigation:I

    or-int v23, v23, v24

    :cond_190
    :goto_190
    invoke-virtual {v15}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_19e

    const/4 v3, 0x2

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->keyboard:I

    or-int v20, v20, v24

    :cond_19e
    add-int/lit8 v19, v19, 0x1

    goto :goto_150

    :cond_1a1
    const/4 v3, 0x2

    goto/16 :goto_15

    :cond_1a4
    const/4 v9, 0x1

    goto/16 :goto_a4

    :cond_1a7
    const/4 v9, 0x0

    goto/16 :goto_a4

    :cond_1aa
    const/16 v3, 0x100

    goto/16 :goto_cd

    :cond_1ae
    const/4 v3, 0x4

    goto/16 :goto_114

    :cond_1b1
    const/4 v6, 0x1

    goto/16 :goto_125

    :cond_1b4
    const/16 v22, 0x0

    goto :goto_14e

    :cond_1b7
    const/16 v24, 0x1

    goto :goto_16a

    :cond_1ba
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->touchscreen:I

    goto :goto_17f

    :cond_1c0
    move/from16 v0, v25

    and-int/lit16 v3, v0, 0x201

    const/16 v6, 0x201

    if-ne v3, v6, :cond_190

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_190

    const/4 v3, 0x2

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->navigation:I

    or-int v23, v23, v24

    goto :goto_190

    :cond_1d7
    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1ed

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    if-eqz v3, :cond_1ed

    const/4 v3, 0x2

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->navigation:I

    or-int/lit8 v23, v23, 0x1

    :cond_1ed
    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_23d

    const/16 v18, 0x1

    :goto_1f6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    move/from16 v0, v18

    if-eq v0, v3, :cond_21e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v18

    iput-boolean v0, v3, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x16

    invoke-virtual {v3, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x16

    invoke-virtual {v3, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_21e
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->navigationHidden:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v23

    invoke-interface {v3, v0, v1, v2}, Landroid/view/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;II)V

    return-void

    :cond_23d
    const/16 v18, 0x0

    goto :goto_1f6
.end method

.method destroyLeakedSurfaces()Z
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    new-instance v1, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method disableSurfaceTrace()V
    .registers 3

    sget-object v0, Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;->$INST$1:Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 10

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "Display: mDisplayId="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "init="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, "x"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, " "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, "dpi"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v5, v6, :cond_58

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v5, v6, :cond_17a

    :cond_58
    :goto_58
    const-string/jumbo v5, " base="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, "x"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, " "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, "dpi"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7f
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v5, :cond_89

    const-string/jumbo v5, " noscale"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_89
    const-string/jumbo v5, " cur="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, "x"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, " app="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, "x"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, " rng="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, "x"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, "-"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, "x"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "deferred="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mLayoutNeeded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " mTouchExcludeRegion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Application tokens in top down Z order:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_156
    if-ltz v2, :cond_182

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, p2}, Lcom/android/server/wm/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_156

    :cond_17a
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v5, v6, :cond_7f

    goto/16 :goto_58

    :cond_182
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1c7

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v5, "  Exiting tokens:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_19e
    if-ltz v0, :cond_1c7

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    const-string/jumbo v5, "  Exiting #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v5, 0x20

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v5, 0x3a

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(C)V

    const-string/jumbo v5, "    "

    invoke-virtual {v4, p2, v5}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_19e

    :cond_1c7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/DimLayerController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/PinnedStackController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodAnimLayerAdjustment:I

    if-eqz v5, :cond_200

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mInputMethodAnimLayerAdjustment="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodAnimLayerAdjustment:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_200
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    return-void

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Display #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    const-string/jumbo v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_4f

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    const-string/jumbo v2, "    "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_2c

    :cond_4f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_2c

    :cond_53
    return-void
.end method

.method dumpWindowAnimators(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x1

    new-array v0, v1, [I

    new-instance v1, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$2;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method enableSurfaceTrace(Ljava/io/FileDescriptor;)V
    .registers 4

    new-instance v0, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method fillsParent()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method findFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 4

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_e

    return-object v2

    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method findTaskForResizePoint(II)Lcom/android/server/wm/Task;
    .registers 9

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v3}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->reset()V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_15
    if-ltz v2, :cond_3b

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    iget v3, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v3}, Landroid/app/ActivityManager$StackId;->isTaskResizeAllowed(I)Z

    move-result v3

    if-nez v3, :cond_28

    return-object v5

    :cond_28
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-virtual {v1, p1, p2, v0, v3}, Lcom/android/server/wm/TaskStack;->findTaskForResizePoint(IIILcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    return-object v3

    :cond_38
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    :cond_3b
    return-object v5
.end method

.method forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
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

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_2a

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_c
    if-ltz v2, :cond_4f

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    if-ne v0, v3, :cond_23

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_23

    :cond_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_23
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_20

    return v5

    :cond_2a
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_31
    if-ge v2, v1, :cond_4f

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    if-ne v0, v3, :cond_48

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_48

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_48
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_45

    return v5

    :cond_4f
    return v4
.end method

.method getAltOrientation()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    return v0
.end method

.method getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    return-object v1
.end method

.method getContentRect(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method getDisplay()Landroid/view/Display;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayId()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    return-object v0
.end method

.method getDockedStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getDockedStackLocked()Lcom/android/server/wm/TaskStack;
    .registers 4

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_f

    :goto_e
    return-object v0

    :cond_f
    move-object v0, v1

    goto :goto_e
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_22

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_22

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getHomeStack: Returning null from this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getLastOrientation()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return v0
.end method

.method getLastWindowForcedOrientation()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    return v0
.end method

.method getLayerForAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;)I
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    sget-object v2, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;->$INST$1:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    return v1

    :cond_f
    iget v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    return v1
.end method

.method getLogicalDisplayRect(Landroid/graphics/Rect;)V
    .registers 12

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v8, Landroid/view/DisplayInfo;->rotation:I

    const/4 v8, 0x1

    if-eq v2, v8, :cond_a

    const/4 v8, 0x3

    if-ne v2, v8, :cond_2b

    :cond_a
    const/4 v5, 0x1

    :goto_b
    if-eqz v5, :cond_2d

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_f
    if-eqz v5, :cond_30

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_13
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    sub-int v8, v4, v7

    div-int/lit8 v1, v8, 0x2

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    sub-int v8, v3, v0

    div-int/lit8 v6, v8, 0x2

    add-int v8, v1, v7

    add-int v9, v6, v0

    invoke-virtual {p1, v1, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_2b
    const/4 v5, 0x0

    goto :goto_b

    :cond_2d
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_f

    :cond_30
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_13
.end method

.method getName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNeedsMenu(Lcom/android/server/wm/WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 8

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-eqz v3, :cond_12

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-ne v3, v1, :cond_10

    :goto_f
    return v1

    :cond_10
    move v1, v2

    goto :goto_f

    :cond_12
    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    new-instance v3, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-ne v3, v1, :cond_26

    move v2, v1

    :cond_26
    return v2
.end method

.method getOrientation()I
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v2, :cond_1b

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    return v2

    :cond_12
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_25

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return v2

    :cond_1b
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getOrientation()I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_25

    return v0

    :cond_25
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getOrientation()I

    move-result v2

    return v2
.end method

.method getPinnedStackController()Lcom/android/server/wm/PinnedStackController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    return-object v0
.end method

.method getRotation()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    return v0
.end method

.method getStackById(I)Lcom/android/server/wm/TaskStack;
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    iget v2, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v2, p1, :cond_17

    return-object v1

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    const/4 v2, 0x0

    return-object v2
.end method

.method getStackCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v0

    return v0
.end method

.method getStaskPosById(I)I
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    iget v2, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v2, p1, :cond_17

    return v0

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    const/4 v2, -0x1

    return v2
.end method

.method getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;
    .registers 7

    float-to-int v1, p1

    float-to-int v2, p2

    new-instance v3, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$5;

    invoke-direct {v3, v1, v2, p0}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$5;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    return-object v0
.end method

.method hasAccess(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    return v0
.end method

.method hasSecureWindowOnScreen()Z
    .registers 3

    sget-object v1, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;->$INST$2:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method initializeDisplayBaseInfo()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_13

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    :cond_13
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    return-void
.end method

.method inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_8

    return v2

    :cond_8
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, v3, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_19

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_19

    const/4 v2, 0x1

    :cond_19
    return v2
.end method

.method isDimming()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayerController;->isDimming()Z

    move-result v0

    return v0
.end method

.method isLayoutNeeded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    return v0
.end method

.method isPrivate()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method isReady()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method isRemovalDeferred()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    return v0
.end method

.method isStackVisible(I)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method isVisible()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_103265(Lcom/android/server/wm/WindowState;)V
    .registers 6

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " surface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    :cond_71
    :goto_71
    return-void

    :cond_72
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_71

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v1

    if-eqz v1, :cond_71

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LEAKED SURFACE (app token hidden): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " surface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " saved="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasSavedSurface()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    goto :goto_71
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_112070(Lcom/android/server/wm/WindowState;Landroid/view/WindowManagerPolicy$WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p3, p1, :cond_6

    iput-object p3, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_b

    return v1

    :cond_b
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-eqz v0, :cond_12

    return v2

    :cond_12
    if-ne p3, p2, :cond_15

    return v2

    :cond_15
    return v1
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_115256(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    return v2

    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e5

    if-ne v0, v1, :cond_28

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    :cond_26
    :goto_26
    const/4 v0, 0x0

    return v0

    :cond_28
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_36

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_39

    :cond_36
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    goto :goto_26

    :cond_39
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-ne v0, v1, :cond_44

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    goto :goto_26

    :cond_44
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardDrawnLw()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    goto :goto_26
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_120558(Lcom/android/server/wm/WindowState;)V
    .registers 6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->orientationChangeTimedOut()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Force clearing orientation change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_121122(Landroid/view/WindowManagerPolicy;Lcom/android/server/wm/WindowState;)V
    .registers 4

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_12

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_12
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_133516(IZLandroid/os/IBinder;Landroid/util/MutableBoolean;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z
    .registers 23

    move-object/from16 v0, p8

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v12, :cond_8

    const/4 v12, 0x0

    return v12

    :cond_8
    move-object/from16 v0, p8

    iget v12, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    if-lt v12, p1, :cond_10

    const/4 v12, 0x0

    return v12

    :cond_10
    if-eqz p2, :cond_1c

    move-object/from16 v0, p8

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1c

    const/4 v12, 0x0

    return v12

    :cond_1c
    move-object/from16 v0, p8

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v12, :cond_24

    const/4 v12, 0x0

    return v12

    :cond_24
    move-object/from16 v0, p8

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v12, :cond_3a

    if-eqz p2, :cond_32

    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    move-object/from16 v0, p8

    iput-object v0, v12, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->appWin:Lcom/android/server/wm/WindowState;

    :cond_32
    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iget-object v12, v12, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->appWin:Lcom/android/server/wm/WindowState;

    if-nez v12, :cond_54

    const/4 v12, 0x0

    return v12

    :cond_3a
    if-eqz p3, :cond_54

    move-object/from16 v0, p8

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v12, :cond_4c

    move-object/from16 v0, p8

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v12, v12, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, p3

    if-eq v12, v0, :cond_4e

    :cond_4c
    const/4 v12, 0x0

    return v12

    :cond_4e
    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    move-object/from16 v0, p8

    iput-object v0, v12, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->appWin:Lcom/android/server/wm/WindowState;

    :cond_54
    move-object/from16 v0, p8

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v12, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowSurfaceController;->getLayer()I

    move-result v5

    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iget v12, v12, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->maxLayer:I

    if-ge v12, v5, :cond_68

    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iput v5, v12, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->maxLayer:I

    :cond_68
    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iget v12, v12, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->minLayer:I

    if-le v12, v5, :cond_72

    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iput v5, v12, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->minLayer:I

    :cond_72
    move-object/from16 v0, p8

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v12, :cond_8d

    move-object/from16 v0, p4

    iget-boolean v12, v0, Landroid/util/MutableBoolean;->value:Z

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_8d

    if-eqz p5, :cond_ce

    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v8, :cond_cc

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    :cond_8d
    :goto_8d
    move-object/from16 v0, p8

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v12, :cond_104

    move-object/from16 v0, p8

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v12, v12, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, p3

    if-ne v12, v0, :cond_104

    const/4 v4, 0x1

    :goto_9e
    if-eqz v4, :cond_c4

    invoke-virtual {v11}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v12

    if-eqz v12, :cond_c4

    iget v12, v11, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_c4

    move-object/from16 v0, p8

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_bf

    move-object/from16 v0, p8

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_c4

    :cond_bf
    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->screenshotReady:Z

    :cond_c4
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/WindowState;->isObscuringDisplay()Z

    move-result v12

    if-eqz v12, :cond_10f

    const/4 v12, 0x1

    return v12

    :cond_cc
    const/4 v12, 0x1

    return v12

    :cond_ce
    move-object/from16 v0, p8

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    iget v12, v10, Landroid/graphics/Rect;->left:I

    iget v13, v3, Landroid/graphics/Rect;->left:I

    add-int v6, v12, v13

    iget v12, v10, Landroid/graphics/Rect;->top:I

    iget v13, v3, Landroid/graphics/Rect;->top:I

    add-int v9, v12, v13

    iget v12, v10, Landroid/graphics/Rect;->right:I

    iget v13, v3, Landroid/graphics/Rect;->right:I

    sub-int v7, v12, v13

    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    iget v13, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v12, v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v9, v7, v2}, Landroid/graphics/Rect;->union(IIII)V

    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    invoke-static/range {p6 .. p7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_8d

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_8d

    :cond_104
    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iget-object v12, v12, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->appWin:Lcom/android/server/wm/WindowState;

    if-eqz v12, :cond_10d

    move/from16 v4, p2

    goto :goto_9e

    :cond_10d
    const/4 v4, 0x0

    goto :goto_9e

    :cond_10f
    const/4 v12, 0x0

    return v12
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_144697(Lcom/android/server/wm/WindowState;)V
    .registers 4

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    return-void
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_16453(Lcom/android/server/wm/WindowState;)V
    .registers 10

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v5

    if-eqz v5, :cond_37

    iget-boolean v3, v4, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-wide v6, v5, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v2

    iput-boolean v2, v4, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    if-eqz v3, :cond_37

    iget-boolean v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v6, v5, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_37
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_50

    if-eqz v1, :cond_44

    iget-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v5, :cond_50

    :cond_44
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result v5

    if-eqz v5, :cond_50

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_50
    iget-object v0, v4, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v0, :cond_73

    iget-object v5, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_73

    iget v5, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    if-eq v5, v6, :cond_69

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    iput v5, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    const/4 v5, 0x0

    iput v5, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    :cond_69
    iget v5, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    iget v6, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v5, v6, :cond_73

    iget v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v5, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    :cond_73
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_18766(Lcom/android/server/wm/WindowState;)V
    .registers 10

    const/high16 v7, 0x100000

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v5, :cond_10

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_11

    :cond_10
    return-void

    :cond_11
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-boolean v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v5, :cond_42

    iget-object v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_3c

    and-int v5, v2, v7

    if-eqz v5, :cond_2b

    iget-object v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v5

    if-eqz v5, :cond_2b

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    :cond_2b
    iget-object v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    if-eqz v3, :cond_3c

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    :cond_3c
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    :cond_42
    iget-object v0, v4, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v0, :cond_6d

    iget-object v5, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_6d

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v5, :cond_6d

    and-int v5, v2, v7

    if-eqz v5, :cond_5c

    iget-object v5, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v5

    if-eqz v5, :cond_5c

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    :cond_5c
    iget-object v5, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v1

    if-eqz v1, :cond_6d

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    if-eqz v3, :cond_6d

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    :cond_6d
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_20715(Lcom/android/server/wm/WindowState;)V
    .registers 8

    const/16 v4, 0x34

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iget v1, v2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-ne v2, v3, :cond_27

    iget v2, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v2, v1, :cond_27

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v4, v3, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_27
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_21211(Lcom/android/server/wm/WindowState;)Z
    .registers 8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v2

    if-nez v2, :cond_e

    return v3

    :cond_e
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_1b

    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v2, :cond_1a

    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    if-eqz v2, :cond_1b

    :cond_1a
    return v3

    :cond_1b
    if-nez v0, :cond_20

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return v4

    :cond_20
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->windowsAreFocusable()Z

    move-result v2

    if-nez v2, :cond_29

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return v4

    :cond_29
    if-eqz v1, :cond_3b

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3b

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowToken;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v2

    if-lez v2, :cond_3b

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return v4

    :cond_3b
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return v4
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_23372(Lcom/android/server/wm/WindowState;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3, p1}, Landroid/view/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v3

    if-nez v3, :cond_87

    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v1

    :goto_14
    if-eqz v1, :cond_4a

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_4a

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-nez v3, :cond_4a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->setReportResizeHints()Z

    move-result v3

    if-eqz v3, :cond_86

    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_86

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_4a

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_86

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_86

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->layoutConfigChanges:Z

    if-eqz v3, :cond_86

    :cond_4a
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v3, :cond_86

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    if-eqz v3, :cond_54

    iput-boolean v6, p1, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    :cond_54
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e7

    if-ne v3, v4, :cond_5e

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    :cond_5e
    iput-boolean v6, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->prelayout()V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLaidOut()Z

    move-result v3

    xor-int/lit8 v0, v3, 0x1

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3, p1, v5}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    iput v3, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    if-eqz v0, :cond_7b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateLastInsetValues()V

    :cond_7b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_86

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DimLayerController;->updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    :cond_86
    return-void

    :cond_87
    const/4 v1, 0x1

    goto :goto_14
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_26915(Lcom/android/server/wm/WindowState;)V
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    iget v0, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1e

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v0, :cond_28

    :cond_1e
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_28

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_44

    :cond_28
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    if-eqz v0, :cond_2e

    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    :cond_2e
    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->prelayout()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    iput v0, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    :cond_44
    :goto_44
    return-void

    :cond_45
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e7

    if-ne v0, v1, :cond_44

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow2:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    goto :goto_44
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_28654(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canBeImeTarget()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_28939(Lcom/android/server/wm/WindowState;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/view/WindowManagerPolicy;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_29144(Lcom/android/server/wm/WindowState;)V
    .registers 18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v12, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mObscured:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v13, v13, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    if-eq v12, v13, :cond_1aa

    const/4 v4, 0x1

    :goto_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v12, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    xor-int/lit8 v6, v12, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v12, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    move-object/from16 v0, p1

    iput-boolean v12, v0, Lcom/android/server/wm/WindowState;->mObscured:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v12, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    if-nez v12, :cond_c4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isObscuringDisplay()Z

    move-result v12

    if-eqz v12, :cond_4e

    move-object/from16 v0, p1

    iput-object v0, v5, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    :cond_4e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v13, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v14, v14, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v15, v15, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v14, v15}, Lcom/android/server/wm/RootWindowContainer;->handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z

    move-result v14

    or-int/2addr v13, v14

    iput-boolean v13, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v12, :cond_c4

    if-eqz v3, :cond_c4

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7d8

    if-eq v9, v12, :cond_7f

    const/16 v12, 0x7da

    if-ne v9, v12, :cond_1ad

    :cond_7f
    :goto_7f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    :cond_86
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v12, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_a8

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_a8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iput v13, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    :cond_a8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v12, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    if-nez v12, :cond_c4

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v12, :cond_c4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    iput v13, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    :cond_c4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->applyDimLayerIfNeeded()V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v12, :cond_e8

    if-eqz v4, :cond_e8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v12

    if-eqz v12, :cond_e8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v12

    if-eqz v12, :cond_e8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v12}, Lcom/android/server/wm/WallpaperController;->updateWallpaperVisibility()V

    :cond_e8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->handleWindowMovedIfNeeded()V

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iput-boolean v12, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v12, :cond_166

    invoke-virtual {v11}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    move-result v2

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v12, :cond_132

    if-eqz v2, :cond_132

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7e7

    if-ne v12, v13, :cond_11a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_11a
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v13, 0x100000

    and-int/2addr v12, v13

    if-eqz v12, :cond_132

    const/4 v12, 0x1

    iput-boolean v12, v5, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_132
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    invoke-virtual {v11}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationStarting()Z

    move-result v12

    if-nez v12, :cond_144

    invoke-virtual {v11}, Lcom/android/server/wm/WindowStateAnimator;->isWaitingForOpening()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_14c

    :cond_144
    if-eqz v7, :cond_14f

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->isAnimatingBounds()Z

    move-result v12

    if-eqz v12, :cond_14f

    :cond_14c
    invoke-virtual {v11}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    :cond_14f
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpRecoveringMemory:Z

    invoke-virtual {v11, v12}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    iget-object v13, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_1b9

    const/4 v12, 0x1

    :goto_163
    invoke-virtual {v13, v12}, Lcom/android/server/wm/WindowSurfaceController;->setBlur(Z)V

    :cond_166
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_187

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppWindowToken;->updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z

    move-result v10

    if-eqz v10, :cond_187

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v12, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_187

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v12, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_187
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v12, :cond_1a6

    if-eqz v6, :cond_1a6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_1a6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v12

    if-eqz v12, :cond_1a6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->focusDisplayed:Z

    :cond_1a6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->updateResizingWindowIfNeeded()V

    return-void

    :cond_1aa
    const/4 v4, 0x0

    goto/16 :goto_13

    :cond_1ad
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v12, v12, 0x400

    if-eqz v12, :cond_86

    goto/16 :goto_7f

    :cond_1b9
    const/4 v12, 0x0

    goto :goto_163
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_50386(ZLcom/android/server/wm/WindowState;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_b

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->destroySavedSurfaces()V

    :cond_b
    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1e

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1e

    invoke-virtual {p2, v2}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v1, v0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    iput v1, p2, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    :cond_1e
    iput-boolean v2, p2, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    return-void
.end method

.method synthetic lambda$-com_android_server_wm_DisplayContent_99992(IILcom/android/server/wm/WindowState;)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-nez v4, :cond_d

    return v3

    :cond_d
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_12

    return v3

    :cond_12
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v4}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_20

    return v3

    :cond_20
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p3, v4}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    and-int/lit8 v1, v0, 0x28

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_31

    if-nez v1, :cond_32

    :cond_31
    :goto_31
    return v2

    :cond_32
    move v2, v3

    goto :goto_31
.end method

.method layoutAndAssignWindowLayersIfNeeded()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return-void
.end method

.method moveStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V
    .registers 7

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_29

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Trying to move stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " which is not currently attached to any display"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v1, v2, :cond_5a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Trying to move stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to its current displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5a
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeStackFromDisplay(Lcom/android/server/wm/TaskStack;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V

    return-void
.end method

.method okToAnimate()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->okToDisplay()Z

    move-result v1

    if-eqz v1, :cond_13

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->okToAnimate()Z

    move-result v0

    :cond_13
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method okToDisplay()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v1, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    :cond_19
    return v0

    :cond_1a
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0
.end method

.method onAppTransitionDone()V
    .registers 3

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onAppTransitionDone()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return-void
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->onConfigurationChanged()V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/PinnedStackController;->onConfigurationChanged()V

    return-void
.end method

.method onDescendantOverrideConfigurationChanged()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method onSeamlessRotationTimeout()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    new-instance v0, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_19
    return-void
.end method

.method onWindowFreezeTimeout()V
    .registers 3

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Window freeze timeout expired."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    new-instance v0, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    return-void
.end method

.method performLayout(ZZ)V
    .registers 13

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearLayoutNeeded()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->uiMode:I

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->beginLayoutLw(ZIIII)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->getSystemDecorLayerLw()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v7, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3d
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->getContentRectLw(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    add-int/lit8 v6, v0, 0x1

    if-gez v6, :cond_4f

    const/4 v6, 0x0

    :cond_4f
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iput v6, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    iput-object v9, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0, v8}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow2:Lcom/android/server/wm/WindowState;

    iput-object v9, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0, v8}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/InputMonitor;->layoutInputConsumers(II)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz p2, :cond_7e

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_7e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->finishLayoutLw()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    check-cast p2, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->positionChildAt(ILcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Z)V

    return-void
.end method

.method prepareFreezingTaskBounds()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_8
    if-ltz v1, :cond_18

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->prepareFreezingTaskBounds()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method prepareWindowSurfaces()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPrepareWindowSurfaces:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method reParentWindowToken(Lcom/android/server/wm/WindowToken;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-ne v0, p0, :cond_7

    return-void

    :cond_7
    if-eqz v0, :cond_20

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_20

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    :cond_20
    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/DisplayContent;->addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V

    return-void
.end method

.method removeAppToken(Landroid/os/IBinder;)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v1

    if-nez v1, :cond_21

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeAppToken: Attempted to remove non-existing token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-nez v0, :cond_4d

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempted to remove non-App token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4d
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->onRemovedFromDisplay()V

    return-void
.end method

.method protected removeChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    if-eqz v0, :cond_8

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    return-void

    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "See DisplayChildWindowContainer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->removeChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;)V

    return-void
.end method

.method removeExistingTokensIfPossible()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeExistingAppTokensIfPossible()V

    return-void
.end method

.method removeIfPossible()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    return-void
.end method

.method removeImmediately()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    :try_start_4
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayerController;->close()V

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->canDispatchPointerEvents()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_2b

    :cond_28
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    return-void

    :catchall_2b
    move-exception v0

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    throw v0
.end method

.method removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_13

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->setExiting()V

    :cond_13
    return-object v0
.end method

.method rotateBounds(IILandroid/graphics/Rect;)V
    .registers 8

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, p2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;I)V

    invoke-static {p2, p1}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFLandroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-void
.end method

.method scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 5

    if-eqz p1, :cond_a

    if-eqz p2, :cond_b

    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, v1, :cond_b

    :cond_a
    return-void

    :cond_b
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method screenshotApplications(Landroid/os/IBinder;IIZFLandroid/graphics/Bitmap$Config;ZZ)Landroid/graphics/Bitmap;
    .registers 24

    sget-object v9, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;->$INST$0:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/DisplayContent;->screenshotApplications(Landroid/os/IBinder;IIZFZZLcom/android/server/wm/DisplayContent$Screenshoter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_1b

    const/4 v2, 0x0

    return-object v2

    :cond_1b
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v12

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mScreenshotApplicationState:Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    iget-object v10, v2, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->appWin:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_57

    iget v14, v10, Lcom/android/server/wm/WindowState;->mLastVisibleLayoutRotation:I

    :goto_29
    if-nez v12, :cond_59

    const/4 v2, 0x1

    if-eq v14, v2, :cond_31

    const/4 v2, 0x3

    if-ne v14, v2, :cond_59

    :cond_31
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Landroid/graphics/Bitmap;->createAshmemBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    return-object v13

    :cond_57
    const/4 v14, -0x1

    goto :goto_29

    :cond_59
    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->createAshmemBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v13
.end method

.method screenshotApplicationsToBuffer(Landroid/os/IBinder;IIZFZZ)Landroid/graphics/GraphicBuffer;
    .registers 17

    sget-object v8, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;->$INST$1:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/DisplayContent;->screenshotApplications(Landroid/os/IBinder;IIZFZZLcom/android/server/wm/DisplayContent$Screenshoter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/GraphicBuffer;

    return-object v0
.end method

.method setAltOrientation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    return-void
.end method

.method setExitingTokensHasVisible(Z)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_17

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    iput-boolean p1, v1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->setExitingTokensHasVisible(Z)V

    return-void
.end method

.method setInputMethodAnimLayerAdjustment(I)V
    .registers 3

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodAnimLayerAdjustment:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    return-void
.end method

.method setLastOrientation(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return-void
.end method

.method setLayoutNeeded()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    return-void
.end method

.method setMaxUiWidth(I)V
    .registers 5

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    return-void
.end method

.method setRotation(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    return-void
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/Task;)V
    .registers 13

    const/4 v4, 0x0

    const/4 v10, 0x0

    if-nez p1, :cond_4e

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    :cond_9
    :goto_9
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_2b

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v1, v3, :cond_92

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_2b
    :goto_2b
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    :goto_33
    if-ltz v6, :cond_9a

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    add-int/lit8 v6, v6, -0x1

    goto :goto_33

    :cond_4e
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    :goto_68
    if-ltz v8, :cond_7f

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v8}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskStack;->setTouchExcludeRegion(Lcom/android/server/wm/Task;ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_68

    :cond_7f
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto/16 :goto_9

    :cond_92
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/server/wm/DisplayContent;->setTouchExcludeRegion(Lcom/android/server/wm/Task;)V

    goto :goto_2b

    :cond_9a
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_bb

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DockedStackDividerController;->getTouchRegion(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_bb
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    if-eqz v1, :cond_c6

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;)V

    :cond_c6
    return-void
.end method

.method startKeyguardExitOnNonAppWindows(ZZ)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/wm/-$Lambda$AUkchKtIxrbCkLkg2ILGagAqXvc;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2, v0}, Lcom/android/server/wm/-$Lambda$AUkchKtIxrbCkLkg2ILGagAqXvc;-><init>(BZZLjava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method switchUser()V
    .registers 3

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return-void
.end method

.method taskIdFromPoint(II)I
    .registers 8

    const/4 v4, -0x1

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_9
    if-ltz v1, :cond_1d

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskStack;->taskIdFromPoint(II)I

    move-result v2

    if-eq v2, v4, :cond_1a

    return v2

    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_1d
    return v4
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " stacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateBaseDisplayMetrics(III)V
    .registers 8

    const/4 v3, 0x0

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-lez v0, :cond_29

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-le v0, v1, :cond_29

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method updateDisplayInfo()V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetricsIfNeeded()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_19
    if-ltz v0, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo(Landroid/graphics/Rect;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    :cond_2a
    return-void
.end method

.method updateRotationUnchecked(Z)Z
    .registers 23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-lez v5, :cond_a

    const/4 v5, 0x0

    return v5

    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v3

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_22

    const/4 v5, 0x0

    return v5

    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v5, :cond_2c

    const/4 v5, 0x0

    return v5

    :cond_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v5, :cond_36

    const/4 v5, 0x0

    return v5

    :cond_36
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v17

    invoke-interface {v5, v14, v0}, Landroid/view/WindowManagerPolicy;->rotationForOrientationLw(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v17

    invoke-interface {v5, v0, v4}, Landroid/view/WindowManagerPolicy;->shouldRotateSeamlessly(II)Z

    move-result v15

    if-eqz v15, :cond_96

    sget-object v5, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;->$INST$3:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v20

    if-eqz v20, :cond_6c

    const/4 v5, 0x0

    return v5

    :cond_6c
    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v5

    if-eqz v5, :cond_76

    const/4 v15, 0x0

    :cond_76
    const/4 v13, 0x0

    :goto_77
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v13, v5, :cond_96

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v5, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Session;

    invoke-virtual {v5}, Lcom/android/server/wm/Session;->hasAlertWindowSurfaces()Z

    move-result v5

    if-eqz v5, :cond_ae

    const/4 v15, 0x0

    :cond_96
    move/from16 v18, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5, v14, v4}, Landroid/view/WindowManagerPolicy;->rotationHasCompatibleMetricsLw(II)Z

    move-result v5

    xor-int/lit8 v2, v5, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_b1

    move/from16 v0, v16

    if-ne v0, v2, :cond_b1

    const/4 v5, 0x0

    return v5

    :cond_ae
    add-int/lit8 v13, v13, 0x1

    goto :goto_77

    :cond_b1
    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_c1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    :cond_c1
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v5, :cond_d8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5, v4}, Landroid/view/WindowManagerPolicy;->setRotationLw(I)V

    :cond_d8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x1

    iput v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v6, 0x7d0

    const/16 v8, 0xb

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    const/4 v5, 0x2

    new-array v11, v5, [I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->isDimming()Z

    move-result v5

    if-eqz v5, :cond_1ea

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v5, v11, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v11, v6

    :goto_10b
    if-nez v18, :cond_1f5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    aget v6, v11, v6

    const/4 v7, 0x1

    aget v7, v11, v7

    move/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v5, v0, v6, v7, v1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(ZIILcom/android/server/wm/DisplayContent;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v3

    :goto_12c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->uiMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(I)Landroid/view/DisplayInfo;

    if-nez p1, :cond_140

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :cond_140
    if-eqz v3, :cond_171

    :try_start_142
    invoke-virtual {v3}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v5

    if-eqz v5, :cond_171

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-wide/16 v6, 0x2710

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationInTransaction(ILandroid/view/SurfaceSession;JFII)Z

    move-result v5

    if-eqz v5, :cond_171

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_171
    if-eqz v18, :cond_181

    new-instance v5, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$4;

    const/4 v6, 0x0

    move/from16 v0, v17

    invoke-direct {v5, v6, v0, v4}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$4;-><init>(BII)V

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_181
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManagerInternal;->performTraversalInTransactionFromWindowManager()V
    :try_end_18a
    .catchall {:try_start_142 .. :try_end_18a} :catchall_1ff

    if-nez p1, :cond_193

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    :cond_193
    new-instance v5, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$6;

    move/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v5, v0, v1}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$6;-><init>(ZLjava/lang/Object;)V

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    if-eqz v18, :cond_1bc

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x36

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v6, 0x7d0

    const/16 v8, 0x36

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    :cond_1bc
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v13, v5, -0x1

    :goto_1c8
    if-ltz v13, :cond_20a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mDisplayId:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v5, v6, :cond_1e7

    :try_start_1e0
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v5, v4}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_1e7
    .catch Landroid/os/RemoteException; {:try_start_1e0 .. :try_end_1e7} :catch_227

    :cond_1e7
    :goto_1e7
    add-int/lit8 v13, v13, -0x1

    goto :goto_1c8

    :cond_1ea
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5, v11}, Landroid/view/WindowManagerPolicy;->selectRotationAnimationLw([I)V

    goto/16 :goto_10b

    :cond_1f5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    goto/16 :goto_12c

    :catchall_1ff
    move-exception v5

    if-nez p1, :cond_209

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    :cond_209
    throw v5

    :cond_20a
    if-nez v3, :cond_225

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v5, :cond_225

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v5, :cond_225

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V

    :cond_225
    const/4 v5, 0x1

    return v5

    :catch_227
    move-exception v12

    goto :goto_1e7
.end method

.method updateStackBoundsAfterConfigChange(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_24

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->get(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->updateBoundsAfterConfigChange()Z

    move-result v2

    if-eqz v2, :cond_21

    iget v2, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_24
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    if-nez v2, :cond_30

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v2}, Lcom/android/server/wm/PinnedStackController;->onDisplayInfoChanged()V

    :cond_30
    return-void
.end method

.method updateSystemUiVisibility(II)V
    .registers 5

    const/4 v1, 0x1

    new-instance v0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$4;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$4;-><init>(BII)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method updateWallpaperForAnimator(Lcom/android/server/wm/WindowAnimator;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWallpaperForAnimator:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v0, p1, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iput-object v0, p1, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget v0, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_1e
    return-void
.end method

.method updateWindowsForAnimator(Lcom/android/server/wm/WindowAnimator;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method waitForAllWindowsDrawn()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/wm/-$Lambda$CZX5GF99beBCM3g54wTSODIo0l4;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, v0}, Lcom/android/server/wm/-$Lambda$CZX5GF99beBCM3g54wTSODIo0l4;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method
