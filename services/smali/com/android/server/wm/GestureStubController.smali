.class public Lcom/android/server/wm/GestureStubController;
.super Ljava/lang/Object;
.source "GestureStubController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/GestureStubController$1;,
        Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;
    }
.end annotation


# static fields
.field private static final GESTURE_RESET_DELAY:I = 0x7d0


# instance fields
.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mGestureFinishRunnable:Ljava/lang/Runnable;

.field private mGestureStubListener:Landroid/view/IGestureStubListener;

.field private mInvisibleAppTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAppTransitionSkipped:Z

.field private mKeepWallpaperShowing:Z

.field private final mLock:Ljava/lang/Object;

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private mThumbnailCallback:Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;

.field private mWindowAlphaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wm/WindowState;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/GestureStubController;)Lcom/android/server/wm/WindowManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/GestureStubController;)Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mThumbnailCallback:Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/GestureStubController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/GestureStubController;->mKeepWallpaperShowing:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/GestureStubController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/GestureStubController;->notifyGestureFinish(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/GestureStubController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/GestureStubController;->notifyGestureReady()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wm/GestureStubController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/GestureStubController;->notifyGestureStart()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wm/GestureStubController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/GestureStubController;->notifySkipAppTransition()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wm/GestureStubController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/GestureStubController;->reset()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/GestureStubController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/GestureStubController;->mIsAppTransitionSkipped:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/GestureStubController;->mInvisibleAppTokens:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/GestureStubController;->mWindowAlphaMap:Ljava/util/Map;

    new-instance v0, Lcom/android/server/wm/GestureStubController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/GestureStubController$1;-><init>(Lcom/android/server/wm/GestureStubController;)V

    iput-object v0, p0, Lcom/android/server/wm/GestureStubController;->mGestureFinishRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/wm/GestureStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/GestureStubController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method private notifyGestureFinish(Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/GestureStubController;->mGestureFinishRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    :goto_9
    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_e
    const/16 v0, 0x7d0

    goto :goto_9
.end method

.method private notifyGestureReady()V
    .registers 7

    iget-object v3, p0, Lcom/android/server/wm/GestureStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/GestureStubController;->mGestureFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/wm/GestureStubController;->reset()V

    iget-object v3, p0, Lcom/android/server/wm/GestureStubController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v4, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/16 v5, 0xe

    invoke-direct {v4, v5, p0}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v3, p0, Lcom/android/server/wm/GestureStubController;->mThumbnailCallback:Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;

    if-eqz v3, :cond_41

    iget-object v3, p0, Lcom/android/server/wm/GestureStubController;->mInvisibleAppTokens:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-ne v3, v1, :cond_23

    iget-object v3, p0, Lcom/android/server/wm/GestureStubController;->mThumbnailCallback:Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;

    invoke-interface {v3, v1}, Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;->onGestureReady(Lcom/android/server/wm/AppWindowToken;)V

    goto :goto_23

    :cond_41
    return-void
.end method

.method private notifyGestureStart()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/wm/GestureStubController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v3, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/16 v4, 0xf

    invoke-direct {v3, v4, p0}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v3, p0, Lcom/android/server/wm/GestureStubController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_10
    iget-object v2, p0, Lcom/android/server/wm/GestureStubController;->mWindowAlphaMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1a

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v2, :cond_1a

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    iget-object v2, p0, Lcom/android/server/wm/GestureStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v4, Lcom/android/server/wm/GestureStubController$4;

    invoke-direct {v4, p0}, Lcom/android/server/wm/GestureStubController$4;-><init>(Lcom/android/server/wm/GestureStubController;)V

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_3e

    goto :goto_1a

    :catchall_3e
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_41
    monitor-exit v3

    return-void
.end method

.method private notifySkipAppTransition()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/GestureStubController;->mIsAppTransitionSkipped:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private reset()V
    .registers 8

    iget-object v5, p0, Lcom/android/server/wm/GestureStubController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v4, 0x0

    :try_start_4
    iput-boolean v4, p0, Lcom/android/server/wm/GestureStubController;->mKeepWallpaperShowing:Z

    iget-object v4, p0, Lcom/android/server/wm/GestureStubController;->mInvisibleAppTokens:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    iget-object v4, p0, Lcom/android/server/wm/GestureStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v6, Lcom/android/server/wm/GestureStubController$5;

    invoke-direct {v6, p0, v0}, Lcom/android/server/wm/GestureStubController$5;-><init>(Lcom/android/server/wm/GestureStubController;Lcom/android/server/wm/AppWindowToken;)V

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_25

    goto :goto_c

    :catchall_25
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_28
    :try_start_28
    iget-object v4, p0, Lcom/android/server/wm/GestureStubController;->mWindowAlphaMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_32
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_32

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v4, :cond_32

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, p0, Lcom/android/server/wm/GestureStubController;->mWindowAlphaMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v6, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    goto :goto_32

    :cond_55
    iget-object v4, p0, Lcom/android/server/wm/GestureStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v6, Lcom/android/server/wm/GestureStubController$6;

    invoke-direct {v6, p0}, Lcom/android/server/wm/GestureStubController$6;-><init>(Lcom/android/server/wm/GestureStubController;)V

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/android/server/wm/GestureStubController;->mInvisibleAppTokens:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    iget-object v4, p0, Lcom/android/server/wm/GestureStubController;->mWindowAlphaMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_6b
    .catchall {:try_start_28 .. :try_end_6b} :catchall_25

    monitor-exit v5

    return-void
.end method


# virtual methods
.method disabledAppTransitionSkipped()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/GestureStubController;->mIsAppTransitionSkipped:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getGestureStubListener()Landroid/view/IGestureStubListener;
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mGestureStubListener:Landroid/view/IGestureStubListener;

    if-nez v0, :cond_13

    iget-object v1, p0, Lcom/android/server/wm/GestureStubController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mGestureStubListener:Landroid/view/IGestureStubListener;

    if-nez v0, :cond_12

    new-instance v0, Lcom/android/server/wm/GestureStubController$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/GestureStubController$2;-><init>(Lcom/android/server/wm/GestureStubController;)V

    iput-object v0, p0, Lcom/android/server/wm/GestureStubController;->mGestureStubListener:Landroid/view/IGestureStubListener;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit v1

    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mGestureStubListener:Landroid/view/IGestureStubListener;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isAppTransitionSkipped()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/GestureStubController;->mIsAppTransitionSkipped:Z

    return v0
.end method

.method keepWallpaperShowing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/GestureStubController;->mKeepWallpaperShowing:Z

    return v0
.end method

.method synthetic lambda$-com_android_server_wm_GestureStubController_3271(Lcom/android/server/wm/WindowState;)V
    .registers 6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_37

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_37

    if-eqz v0, :cond_37

    const/4 v1, 0x3

    if-eq v0, v1, :cond_37

    const/4 v1, 0x5

    if-eq v0, v1, :cond_37

    const/4 v1, 0x4

    if-eq v0, v1, :cond_37

    iget-object v2, p0, Lcom/android/server/wm/GestureStubController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_22
    iget-object v1, p0, Lcom/android/server/wm/GestureStubController;->mInvisibleAppTokens:Ljava/util/Set;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wm/GestureStubController;->mWindowAlphaMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_38

    monitor-exit v2

    :cond_37
    return-void

    :catchall_38
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method synthetic lambda$-com_android_server_wm_GestureStubController_4233(Lcom/android/server/wm/WindowState;)V
    .registers 6

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/GestureStubController;->mKeepWallpaperShowing:Z

    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/GestureStubController$3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/GestureStubController$3;-><init>(Lcom/android/server/wm/GestureStubController;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->showRobustlyInTransaction()Z

    :cond_28
    return-void
.end method

.method registerThumbnailCallback(Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/android/server/wm/GestureStubController;->mThumbnailCallback:Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method resetSurfaceStatusIfNeeded(Lcom/android/server/wm/AppWindowToken;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mInvisibleAppTokens:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/GestureStubController;->mGestureFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/wm/GestureStubController;->reset()V

    :cond_14
    return-void
.end method
