.class Lcom/android/server/wm/RootWindowContainer;
.super Lcom/android/server/wm/WindowContainer;
.source "RootWindowContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RootWindowContainer$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer",
        "<",
        "Lcom/android/server/wm/DisplayContent;",
        ">;"
    }
.end annotation


# static fields
.field private static final SET_SCREEN_BRIGHTNESS_OVERRIDE:I = 0x1

.field private static final SET_USER_ACTIVITY_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChangedStackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseSystemDialogsReason:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mHoldScreenWindow:Lcom/android/server/wm/WindowState;

.field private mLastWindowFreezeSource:Ljava/lang/Object;

.field private final mLayersController:Lcom/android/server/wm/WindowLayersController;

.field private mObscureApplicationContentOnSecondaryDisplays:Z

.field mObscuringWindow:Lcom/android/server/wm/WindowState;

.field mOrientationChangeComplete:Z

.field mRemoteEventTrace:Lcom/android/server/wm/RemoteEventTrace;

.field private mScreenBrightness:F

.field mService:Lcom/android/server/wm/WindowManagerService;

.field mSurfaceTraceEnabled:Z

.field mSurfaceTraceFd:Landroid/os/ParcelFileDescriptor;

.field private mSustainedPerformanceModeCurrent:Z

.field private mSustainedPerformanceModeEnabled:Z

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mWallpaperActionPending:Z

.field final mWallpaperController:Lcom/android/server/wm/WallpaperController;

.field private mWallpaperForceHidingChanged:Z

.field mWallpaperMayChange:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;->$INST$3:Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;

    sput-object v0, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowContainer;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperForceHidingChanged:Z

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChangedStackList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/16 v1, 0x13

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$MyHandler;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer$MyHandler;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/WindowLayersController;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowLayersController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    new-instance v0, Lcom/android/server/wm/WallpaperController;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/WallpaperController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    return-void
.end method

.method private applySurfaceChangesTransaction(ZII)V
    .registers 10

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    iput-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v4, p2, p3}, Lcom/android/server/wm/Watermark;->positionSurface(II)V

    :cond_12
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

    invoke-virtual {v4, p2, p3}, Lcom/android/server/wm/TalkbackWatermark;->positionSurface(II)V

    :cond_1f
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {v4, p2, p3}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(II)V

    :cond_2c
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-eqz v4, :cond_3f

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v5

    invoke-virtual {v4, p2, p3, v5}, Lcom/android/server/wm/CircularDisplayMask;->positionSurface(III)V

    :cond_3f
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-eqz v4, :cond_52

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v5

    invoke-virtual {v4, p2, p3, v5}, Lcom/android/server/wm/EmulatorDisplayOverlay;->positionSurface(III)V

    :cond_52
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_5a
    if-ge v3, v0, :cond_6c

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->applySurfaceChangesTransaction(Z)Z

    move-result v4

    or-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    :cond_6c
    if-eqz v2, :cond_76

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_76
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManagerInternal;->performTraversalInTransactionFromWindowManager()V

    return-void
.end method

.method private createDisplayContent(Landroid/view/Display;)Lcom/android/server/wm/DisplayContent;
    .registers 10

    const/4 v7, 0x5

    new-instance v0, Lcom/android/server/wm/DisplayContent;

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-direct {v0, p1, v4, v5, v6}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowLayersController;Lcom/android/server/wm/WallpaperController;)V

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    iget-object v5, v2, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    iget-object v6, v2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/server/wm/DisplaySettings;->getOverscanLocked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/view/DisplayInfo;->overscanLeft:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iput v4, v2, Landroid/view/DisplayInfo;->overscanTop:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iput v4, v2, Landroid/view/DisplayInfo;->overscanRight:I

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iput v4, v2, Landroid/view/DisplayInfo;->overscanBottom:I

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v4, :cond_7b

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v4, v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->configureDisplayPolicyLocked(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result v4

    if-ne v4, v7, :cond_58

    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result v4

    if-ne v4, v7, :cond_7b

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    if-ne v1, v4, :cond_7b

    :cond_58
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->canDispatchPointerEvents()Z

    move-result v4

    if-eqz v4, :cond_7b

    new-instance v4, Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v4, v5, v0}, Lcom/android/server/wm/TaskTapPointerEventListener;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, v0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    if-nez v1, :cond_7b

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    :cond_7b
    return-object v0
.end method

.method private getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    new-instance v0, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0;

    invoke-direct {v0, p3, p2, p1}, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method private handleResizingWindows()Landroid/util/ArraySet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/DisplayContent;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_b
    if-ltz v1, :cond_4a

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-eqz v4, :cond_1e

    :cond_1b
    :goto_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_1e
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_27

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->destroySavedSurfaces()V

    :cond_27
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->reportResized()V

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->excludeWindowTypeFromTapOutTask(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v2, :cond_46

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    :cond_46
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_4a
    return-object v2
.end method

.method static synthetic lambda$-com_android_server_wm_RootWindowContainer_13469(Ljava/lang/String;Ljava/util/ArrayList;ILcom/android/server/wm/WindowState;)V
    .registers 5

    if-eqz p0, :cond_16

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_15
    return-void

    :cond_16
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_15

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15
.end method

.method static synthetic lambda$-com_android_server_wm_RootWindowContainer_18338(IZLcom/android/server/wm/WindowState;)V
    .registers 4

    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_11

    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p0, v0, :cond_11

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    :cond_11
    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_RootWindowContainer_19047(ILcom/android/server/wm/WindowState;)Z
    .registers 3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne v0, p0, :cond_b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic lambda$-com_android_server_wm_RootWindowContainer_27802(Lcom/android/server/wm/WindowState;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->mNeedPendingShowSurface:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowAnimator;->mNeedPendingShowSurface:Z

    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->mIsDummyVisible:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v1, "hide by gesture"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    :cond_35
    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_RootWindowContainer_48979(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZLcom/android/server/wm/WindowState;)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Window #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "    "

    if-nez p3, :cond_3c

    if-eqz p0, :cond_46

    :cond_3c
    :goto_3c
    invoke-virtual {p4, p1, v2, v0}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    aget v0, p2, v1

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, v1

    :cond_45
    return-void

    :cond_46
    move v0, v1

    goto :goto_3c
.end method

.method static synthetic lambda$-com_android_server_wm_RootWindowContainer_7397(Lcom/android/server/wm/WindowState;)V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppWindowToken;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V

    :cond_7
    return-void
.end method

.method private prepareFreezingTaskBounds()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->prepareFreezingTaskBounds()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;)[I
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :goto_b
    if-nez v0, :cond_11

    const/4 v1, 0x0

    return-object v1

    :cond_f
    const/4 v0, 0x0

    goto :goto_b

    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->updateStackBoundsAfterConfigChange()[I

    move-result-object v1

    return-object v1
.end method

.method private static toBrightnessOverride(F)I
    .registers 2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private updateStackBoundsAfterConfigChange()[I
    .registers 5

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChangedStackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v2, :cond_1e

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChangedStackList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->updateStackBoundsAfterConfigChange(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1e
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChangedStackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x0

    :goto_27
    return-object v3

    :cond_28
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChangedStackList:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v3

    goto :goto_27
.end method

.method private updateStackBoundsAfterConfigChange(I)[I
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChangedStackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChangedStackList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->updateStackBoundsAfterConfigChange(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChangedStackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    :goto_17
    return-object v1

    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChangedStackList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v1

    goto :goto_17
.end method


# virtual methods
.method canShowStrictModeViolation(I)Z
    .registers 5

    new-instance v1, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;-><init>(BI)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method closeSystemDialogs(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method computeFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 10

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_12
    if-ltz v2, :cond_4b

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_47

    if-eqz v1, :cond_4a

    iget-boolean v4, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4a

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "71786287"

    aput-object v5, v4, v7

    iget v5, v3, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string/jumbo v5, ""

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const v5, 0x534e4554

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_47
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    :cond_4a
    return-object v3

    :cond_4b
    return-object v8
.end method

.method copyAnimToLayoutParams()Z
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v0, v2, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_10

    iput-boolean v4, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    const/4 v1, 0x1

    :cond_10
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_17

    iput-boolean v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    const/4 v1, 0x1

    :cond_17
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1e

    iput-boolean v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperForceHidingChanged:Z

    const/4 v1, 0x1

    :cond_1e
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_33

    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    :cond_24
    :goto_24
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    :cond_2c
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_32

    iput-boolean v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    :cond_32
    return v1

    :cond_33
    iput-boolean v4, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v2, :cond_24

    const/4 v1, 0x1

    goto :goto_24
.end method

.method disableSurfaceTrace()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mSurfaceTraceEnabled:Z

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mRemoteEventTrace:Lcom/android/server/wm/RemoteEventTrace;

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mSurfaceTraceFd:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_10
    if-ltz v1, :cond_20

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->disableSurfaceTrace()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method dumpDisplayContents(Ljava/io/PrintWriter;)V
    .registers 6

    const-string/jumbo v3, "WINDOW MANAGER DISPLAY CONTENTS (dumpsys window displays)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_2c

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    const-string/jumbo v3, "  "

    invoke-virtual {v1, v3, p1}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_26
    const-string/jumbo v3, "  NO DISPLAY"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method dumpLayoutNeededDisplayIds(Ljava/io/PrintWriter;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v3

    if-nez v3, :cond_7

    return-void

    :cond_7
    const-string/jumbo v3, "  mLayoutNeeded on displays="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_2e

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .registers 5

    const-string/jumbo v1, "  All tokens:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_e
    if-ltz v0, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->dumpTokens(Ljava/io/PrintWriter;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_1e
    return-void
.end method

.method dumpWindowsNoHeader(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    new-array v0, v2, [I

    new-instance v1, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$1;

    invoke-direct {v1, p2, p3, p1, v0}, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$1;-><init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method enableSurfaceTrace(Landroid/os/ParcelFileDescriptor;)V
    .registers 7

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mSurfaceTraceEnabled:Z

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->disableSurfaceTrace()V

    :cond_b
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mSurfaceTraceEnabled:Z

    new-instance v3, Lcom/android/server/wm/RemoteEventTrace;

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v3, v4, v2}, Lcom/android/server/wm/RemoteEventTrace;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/io/FileDescriptor;)V

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mRemoteEventTrace:Lcom/android/server/wm/RemoteEventTrace;

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mSurfaceTraceFd:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_21
    if-ltz v1, :cond_31

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->enableSurfaceTrace(Ljava/io/FileDescriptor;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    :cond_31
    return-void
.end method

.method getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .registers 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_9
    if-ltz v2, :cond_1d

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_1a

    return-object v0

    :cond_1a
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_1d
    return-object v4
.end method

.method getDisplayContent(I)Lcom/android/server/wm/DisplayContent;
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_8
    if-ltz v1, :cond_1c

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_19

    return-object v0

    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_1c
    const/4 v2, 0x0

    return-object v2
.end method

.method getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;
    .registers 7

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-nez v2, :cond_1b

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_14
    invoke-direct {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->createDisplayContent(Landroid/view/Display;)Lcom/android/server/wm/DisplayContent;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1c

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1b
    return-object v2

    :catchall_1c
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V
    .registers 6

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v2, :cond_25

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isRemovalDeferred()Z

    move-result v3

    if-eqz v3, :cond_1d

    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1a

    :cond_25
    return-void
.end method

.method getName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ROOT"

    return-object v0
.end method

.method getStackById(I)Lcom/android/server/wm/TaskStack;
    .registers 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_9
    if-ltz v1, :cond_1d

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    if-eqz v2, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_1d
    return-object v4
.end method

.method getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;
    .registers 7

    const/4 v4, 0x0

    if-nez p1, :cond_4

    return-object v4

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_c
    if-ltz v2, :cond_22

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    iget-object v3, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    if-ne v0, p1, :cond_1f

    return-object v1

    :cond_1f
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_22
    return-object v4
.end method

.method getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v2, 0x10

    :try_start_3
    invoke-static {p2, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_6} :catch_c

    move-result v1

    const/4 p2, 0x0

    :goto_8
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/wm/RootWindowContainer;->getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void

    :catch_c
    move-exception v0

    goto :goto_8
.end method

.method handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z
    .registers 16

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v2

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v4, 0x0

    iget-boolean v7, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_8a

    if-eqz v2, :cond_8a

    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_1b

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    :cond_1b
    if-nez p3, :cond_33

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_33

    iget v7, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_33

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v7, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    :cond_33
    if-nez p3, :cond_4d

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v8, v7, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_4d

    iget-wide v8, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_4d

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v8, v7, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v8, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    :cond_4d
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_8b

    iget-boolean v7, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v7, :cond_8b

    const/16 v7, 0x7e7

    if-eq v6, v7, :cond_63

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_66

    :cond_63
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    :cond_66
    const/4 v4, 0x1

    :cond_67
    :goto_67
    const/high16 v7, 0x40000

    and-int/2addr v7, v5

    if-eqz v7, :cond_6f

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    :cond_6f
    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_8a

    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d4

    if-eq v7, v8, :cond_8a

    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget v8, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v7, v8}, Landroid/os/PowerManagerInternal;->addVisibleWindowUids(I)V

    :cond_8a
    return v4

    :cond_8b
    if-eqz v3, :cond_67

    iget-boolean v7, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    if-eqz v7, :cond_97

    if-eqz p2, :cond_67

    const/16 v7, 0x7d9

    if-ne v6, v7, :cond_67

    :cond_97
    const/4 v4, 0x1

    goto :goto_67
.end method

.method hasPendingLayoutChanges(Lcom/android/server/wm/WindowAnimator;)Z
    .registers 8

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_2a

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v4

    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_24

    iget v5, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_24
    if-eqz v4, :cond_27

    const/4 v2, 0x1

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_2a
    return v2
.end method

.method isLayoutNeeded()Z
    .registers 5

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_1c

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    return v3

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    const/4 v3, 0x0

    return v3
.end method

.method synthetic lambda$-com_android_server_wm_RootWindowContainer_18603(Lcom/android/server/wm/WindowState;)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p1, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    return-void

    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, p1, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v3, 0x3

    if-ne v0, v3, :cond_23

    :cond_1f
    :goto_1f
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    return-void

    :cond_23
    move v1, v2

    goto :goto_1f
.end method

.method synthetic lambda$-com_android_server_wm_RootWindowContainer_21710(Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    :cond_1c
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_RootWindowContainer_7116(Lcom/android/server/wm/WindowState;)V
    .registers 5

    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_b

    :try_start_4
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->prepareFreezingTaskBounds()V

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->onConfigurationChanged()V

    return-void
.end method

.method performSurfacePlacement(Z)V
    .registers 36

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    const/16 v30, 0x3

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v24

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowList;->size()I

    move-result v20

    const/4 v15, 0x0

    :goto_37
    move/from16 v0, v20

    if-ge v15, v0, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DisplayContent;

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v12, v0}, Lcom/android/server/wm/DisplayContent;->setExitingTokensHasVisible(Z)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_37

    :cond_53
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    const/high16 v29, -0x40800000    # -1.0f

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    const-wide/16 v30, -0x1

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/PowerManagerInternal;->clearVisibleWindowUids()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v11

    iget v10, v11, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v8, v11, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_b9
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v10, v8}, Lcom/android/server/wm/RootWindowContainer;->applySurfaceChangesTransaction(ZII)V
    :try_end_c0
    .catch Ljava/lang/RuntimeException; {:try_start_b9 .. :try_end_c0} :catch_303
    .catchall {:try_start_b9 .. :try_end_c0} :catchall_31d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    :goto_c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v29

    if-eqz v29, :cond_117

    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v29, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowSurfacePlacer;->handleAppTransitionReadyLocked()I

    move-result v30

    or-int v29, v29, v30

    move/from16 v0, v29

    iput v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string/jumbo v29, "Timeline"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Timeline: App_transition_ready time:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    move/from16 v29, v0

    if-nez v29, :cond_180

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v29

    if-eqz v29, :cond_180

    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->handleAnimatingStoppedAndTransitionLocked()I

    move-result v30

    or-int v29, v29, v30

    move/from16 v0, v29

    iput v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string/jumbo v29, "Timeline"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Timeline: App_transition_stopped time:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v29, Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;->$INST$4:Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_180
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperForceHidingChanged:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1ac

    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v29, v0

    if-nez v29, :cond_1ac

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_1ac

    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    iput v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_1ac
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperForceHidingChanged:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1c6

    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x4

    move/from16 v0, v29

    iput v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_1c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1fe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v29

    if-eqz v29, :cond_1fe

    const/16 v24, 0x1

    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x8

    move/from16 v0, v29

    iput v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_1fe
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v29

    if-eqz v29, :cond_20e

    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    iput v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_20e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->handleResizingWindows()Landroid/util/ArraySet;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    move/from16 v29, v0

    if-eqz v29, :cond_262

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    move/from16 v29, v0

    if-eqz v29, :cond_259

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v29, v0

    const/16 v30, 0xb

    invoke-virtual/range {v29 .. v30}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    :cond_259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    :cond_262
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v18

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    if-lez v18, :cond_2ea

    :cond_27b
    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_328

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/AppWindowToken;->isOnTop()Z

    move-result v29

    if-eqz v29, :cond_328

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2ae
    if-gtz v18, :cond_27b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_2ea

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v29

    if-eqz v29, :cond_2ea

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2ea
    const/4 v15, 0x0

    :goto_2eb
    move/from16 v0, v20

    if-ge v15, v0, :cond_368

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->removeExistingTokensIfPossible()V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2eb

    :catch_303
    move-exception v16

    :try_start_304
    sget-object v29, Lcom/android/server/wm/RootWindowContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "Unhandled exception in Window Manager"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_312
    .catchall {:try_start_304 .. :try_end_312} :catchall_31d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    goto/16 :goto_c9

    :catchall_31d
    move-exception v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    throw v29

    :cond_328
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_34d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    :cond_34d
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v29

    if-eqz v29, :cond_363

    const/16 v27, 0x1

    :cond_363
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowState;->destroyOrSaveSurfaceUnchecked()V

    goto/16 :goto_2ae

    :cond_368
    if-eqz v27, :cond_377

    iget v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x4

    move/from16 v0, v29

    iput v0, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_377
    const/4 v15, 0x0

    :goto_378
    move/from16 v0, v20

    if-ge v15, v0, :cond_396

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DisplayContent;

    iget v0, v12, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v29, v0

    if-eqz v29, :cond_393

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_393
    add-int/lit8 v15, v15, 0x1

    goto :goto_378

    :cond_396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Lcom/android/server/wm/Session;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    move/from16 v29, v0

    if-nez v29, :cond_413

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpg-float v29, v29, v30

    if-ltz v29, :cond_3dc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    move/from16 v29, v0

    const/high16 v30, 0x3f800000    # 1.0f

    cmpl-float v29, v29, v30

    if-lez v29, :cond_609

    :cond_3dc
    const/4 v5, -0x1

    :goto_3dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v5, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    const/16 v31, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/Message;->sendToTarget()V

    :cond_413
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_452

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    move/from16 v29, v0

    if-eqz v29, :cond_615

    const/16 v29, 0x1

    :goto_447
    const/16 v31, 0x6

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    :cond_452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    move/from16 v29, v0

    if-eqz v29, :cond_4ad

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAllowTheaterModeWakeFromLayout:Z

    move/from16 v29, v0

    if-nez v29, :cond_489

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string/jumbo v30, "theater_mode_on"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    if-nez v29, :cond_49f

    :cond_489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v29, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    const-string/jumbo v32, "android.server.wm:TURN_ON"

    invoke-virtual/range {v29 .. v32}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    :cond_49f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    :cond_4ad
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    move/from16 v29, v0

    if-eqz v29, :cond_543

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v13

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v29

    if-eqz v29, :cond_619

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v29, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v31, 0x12

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/Message;->sendToTarget()V

    :goto_4e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_623

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v25

    :goto_50a
    if-eqz v25, :cond_543

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v29

    if-eqz v29, :cond_543

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v31, 0x12

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/Message;->sendToTarget()V

    :cond_543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    if-nez v29, :cond_56b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    move/from16 v29, v0

    if-eqz v29, :cond_574

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_574

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    move/from16 v29, v0

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_574

    :cond_56b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    :cond_574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_641

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v0, v4, :cond_5af

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    add-int/lit8 v30, v4, 0xa

    move/from16 v0, v30

    new-array v0, v0, [Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    :cond_5af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/16 v18, 0x0

    :goto_5e0
    move/from16 v0, v18

    if-ge v0, v4, :cond_627

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    aget-object v26, v29, v18

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    if-eqz v12, :cond_606

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_606

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_606
    add-int/lit8 v18, v18, 0x1

    goto :goto_5e0

    :cond_609
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/RootWindowContainer;->toBrightnessOverride(F)I

    move-result v5

    goto/16 :goto_3dd

    :cond_615
    const/16 v29, 0x0

    goto/16 :goto_447

    :cond_619
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    goto/16 :goto_4e2

    :cond_623
    const/16 v25, 0x0

    goto/16 :goto_50a

    :cond_627
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v29

    add-int/lit8 v19, v29, -0x1

    :goto_62d
    if-ltz v19, :cond_641

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    add-int/lit8 v19, v19, -0x1

    goto :goto_62d

    :cond_641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowList;->size()I

    move-result v29

    add-int/lit8 v15, v29, -0x1

    :goto_64d
    if-ltz v15, :cond_663

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/DisplayContent;

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/DisplayContent;->checkCompleteDeferredRemoval()Z

    add-int/lit8 v15, v15, -0x1

    goto :goto_64d

    :cond_663
    if-eqz v24, :cond_676

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/server/wm/WindowManagerService;->setFocusTaskRegionLocked(Lcom/android/server/wm/AppWindowToken;)V

    if-eqz v23, :cond_6c0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_6bd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v17

    :goto_6a1
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6a5
    :goto_6a5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_6c0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, v17

    if-eq v0, v6, :cond_6a5

    const/16 v29, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Lcom/android/server/wm/DisplayContent;->setTouchExcludeRegion(Lcom/android/server/wm/Task;)V

    goto :goto_6a5

    :cond_6bd
    const/16 v17, 0x0

    goto :goto_6a1

    :cond_6c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowSurfacePlacer;->destroyPendingSurfaces()V

    return-void
.end method

.method reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    .registers 20

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v14, v14, Lcom/android/server/wm/Session;->mPid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const/4 v14, 0x2

    aput-object p2, v13, v14

    const/16 v14, 0x7918

    invoke-static {v14, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_2d
    const-string/jumbo v13, "WindowManager"

    const-string/jumbo v14, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowList;->size()I

    move-result v9

    const/4 v4, 0x0

    :goto_3f
    if-ge v4, v9, :cond_53

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v13, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->destroyLeakedSurfaces()Z

    move-result v13

    or-int/2addr v8, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_53
    if-nez v8, :cond_aa

    const-string/jumbo v13, "WindowManager"

    const-string/jumbo v14, "No leaked surfaces; killing applications!"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v4, 0x0

    :goto_64
    if-ge v4, v9, :cond_aa

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v13, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/DisplayContent;

    new-instance v14, Lcom/android/server/wm/-$Lambda$CZX5GF99beBCM3g54wTSODIo0l4;

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-direct {v14, v15, v0, v10}, Lcom/android/server/wm/-$Lambda$CZX5GF99beBCM3g54wTSODIo0l4;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    if-lez v13, :cond_a7

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    new-array v11, v13, [I

    const/4 v6, 0x0

    :goto_89
    array-length v13, v11

    if-ge v6, v13, :cond_95

    invoke-virtual {v10, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    aput v13, v11, v6
    :try_end_92
    .catchall {:try_start_2d .. :try_end_92} :catchall_ec

    add-int/lit8 v6, v6, 0x1

    goto :goto_89

    :cond_95
    :try_start_95
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string/jumbo v14, "Free memory"

    move/from16 v0, p3

    invoke-interface {v13, v11, v14, v0}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_a3} :catch_f5
    .catchall {:try_start_95 .. :try_end_a3} :catchall_ec

    move-result v13

    if-eqz v13, :cond_a7

    const/4 v7, 0x1

    :cond_a7
    :goto_a7
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    :cond_aa
    if-nez v8, :cond_ae

    if-eqz v7, :cond_e6

    :cond_ae
    :try_start_ae
    const-string/jumbo v13, "WindowManager"

    const-string/jumbo v14, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_dd

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v13, :cond_dd

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v13

    if-eqz v13, :cond_dd

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V
    :try_end_dd
    .catchall {:try_start_ae .. :try_end_dd} :catchall_ec

    :cond_dd
    :try_start_dd
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v13}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_e6
    .catch Landroid/os/RemoteException; {:try_start_dd .. :try_end_e6} :catch_f3
    .catchall {:try_start_dd .. :try_end_e6} :catchall_ec

    :cond_e6
    :goto_e6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v8, :cond_f1

    :goto_eb
    return v7

    :catchall_ec
    move-exception v13

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13

    :cond_f1
    const/4 v7, 0x1

    goto :goto_eb

    :catch_f3
    move-exception v5

    goto :goto_e6

    :catch_f5
    move-exception v5

    goto :goto_a7
.end method

.method removeReplacedWindows()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_5
    sget-object v0, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    return-void

    :catchall_11
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    throw v0
.end method

.method setDisplayOverrideConfigurationIfNeeded(Landroid/content/res/Configuration;I)[I
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-nez v2, :cond_21

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Display not found for id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_21
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v0, 0x1

    :goto_2c
    if-nez v0, :cond_31

    return-object v4

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2c

    :cond_31
    invoke-virtual {v2, p1}, Lcom/android/server/wm/DisplayContent;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    if-nez p2, :cond_3b

    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;)[I

    move-result-object v3

    return-object v3

    :cond_3b
    invoke-direct {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->updateStackBoundsAfterConfigChange(I)[I

    move-result-object v3

    return-object v3
.end method

.method setSecureSurfaceState(IZ)V
    .registers 5

    new-instance v0, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$2;

    invoke-direct {v0, p2, p1}, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$2;-><init>(ZI)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method updateAppOpsState()V
    .registers 3

    new-instance v0, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method
