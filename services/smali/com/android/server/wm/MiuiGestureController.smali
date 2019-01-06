.class public Lcom/android/server/wm/MiuiGestureController;
.super Ljava/lang/Object;
.source "MiuiGestureController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MiuiGestureController$1;,
        Lcom/android/server/wm/MiuiGestureController$2;,
        Lcom/android/server/wm/MiuiGestureController$3;,
        Lcom/android/server/wm/MiuiGestureController$4;,
        Lcom/android/server/wm/MiuiGestureController$GestureCallback;,
        Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;,
        Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field private static final GESTURE_STUB_WINDOW:Ljava/lang/String; = "GestureStub"

.field static final INPUT_CONSUMER_RECENTS_ANIMATION:Ljava/lang/String; = "recents_animation_input_consumer"

.field private static final TAG:Ljava/lang/String; = "MiuiGestureController"

.field static final THUMBNAIL_ANIMATION_TIMEOUT:I = 0x65


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

.field private mGameBoostListener:Landroid/database/ContentObserver;

.field private mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

.field private mGestureFinishRunnable:Ljava/lang/Runnable;

.field mGestureHelperDeathRecipient:Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;

.field private final mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

.field mHandler:Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsAppTransitionSkipped:Z

.field private mIsGameBoost:Z

.field private mIsGestureOpen:Z

.field private mIsMistakeTouch:Z

.field private mKeepWallpaperShowing:Z

.field private final mLock:Ljava/lang/Object;

.field private mMistakeTouchListener:Landroid/database/ContentObserver;

.field mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

.field private mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

.field private final mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

.field mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/MiuiGestureController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGestureController$GestureCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGesturePointerEventListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/MiuiGestureController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGestureController;->mIsGestureOpen:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/MiuiGestureController;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/PointerEventDispatcher;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/MiuiGestureController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/MiuiGestureController;->mIsGameBoost:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wm/MiuiGestureController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/MiuiGestureController;->mIsGestureOpen:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wm/MiuiGestureController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/MiuiGestureController;->mIsMistakeTouch:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/MiuiGestureController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGestureController;->reset()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/PointerEventDispatcher;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MiuiGestureController;->mIsAppTransitionSkipped:Z

    new-instance v0, Lcom/android/server/wm/MiuiGestureController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MiuiGestureController$1;-><init>(Lcom/android/server/wm/MiuiGestureController;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureFinishRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/wm/MiuiGestureController$2;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mHandler:Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MiuiGestureController$2;-><init>(Lcom/android/server/wm/MiuiGestureController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/server/wm/MiuiGestureController$3;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mHandler:Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MiuiGestureController$3;-><init>(Lcom/android/server/wm/MiuiGestureController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mMistakeTouchListener:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/server/wm/MiuiGestureController$4;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mHandler:Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MiuiGestureController$4;-><init>(Lcom/android/server/wm/MiuiGestureController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGameBoostListener:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object p2, p0, Lcom/android/server/wm/MiuiGestureController;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MiuiGestureController"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;-><init>(Lcom/android/server/wm/MiuiGestureController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mHandler:Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;

    new-instance v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/MiuiGestureController;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGestureController;->init()V

    return-void
.end method

.method private init()V
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "MiuiGestureController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hasNavigationBar: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/MiuiGestureController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->hasNavigationBar()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "force_fsg_nav_bar"

    invoke-static {v1, v4}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    iget-object v4, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/PointerEventDispatcher;->registerInputEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    iput-boolean v2, p0, Lcom/android/server/wm/MiuiGestureController;->mIsGestureOpen:Z

    :cond_3e
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "show_mistake_touch_toast"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_66

    move v1, v2

    :goto_4e
    iput-boolean v1, p0, Lcom/android/server/wm/MiuiGestureController;->mIsMistakeTouch:Z

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "gb_boosting"

    const/4 v5, -0x2

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_68

    :goto_60
    iput-boolean v2, p0, Lcom/android/server/wm/MiuiGestureController;->mIsGameBoost:Z

    invoke-direct {p0}, Lcom/android/server/wm/MiuiGestureController;->registerContentObserver()V

    :cond_65
    return-void

    :cond_66
    move v1, v3

    goto :goto_4e

    :cond_68
    move v2, v3

    goto :goto_60
.end method

.method private registerContentObserver()V
    .registers 6

    const/4 v3, -0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "force_fsg_nav_bar"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureController;->mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_mistake_touch_toast"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureController;->mMistakeTouchListener:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gb_boosting"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureController;->mGameBoostListener:Landroid/database/ContentObserver;

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private reset()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/wm/MiuiGestureController;->mKeepWallpaperShowing:Z

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/MiuiGestureController$5;

    invoke-direct {v2, p0}, Lcom/android/server/wm/MiuiGestureController$5;-><init>(Lcom/android/server/wm/MiuiGestureController;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_14

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private unlinkToDeathMiuiGestureHelper()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureHelperDeathRecipient:Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    invoke-interface {v0}, Lcom/miui/internal/transition/IMiuiGestureControlHelper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureHelperDeathRecipient:Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v3, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureHelperDeathRecipient:Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;

    :cond_17
    return-void
.end method


# virtual methods
.method cancelGoHomeAnimationIfNeeded(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->cancelGoHomeAnimationIfNeeded(Lcom/android/server/wm/AppWindowToken;)V

    return-void
.end method

.method disabledAppTransitionSkipped()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/MiuiGestureController;->mIsAppTransitionSkipped:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getMiuiLaunchIconInfo(Lcom/android/server/wm/AppWindowToken;)Lcom/miui/internal/transition/MiuiLaunchIconInfo;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    invoke-interface {v1, p1}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->getMiuiLaunchIconInfo(Lcom/android/server/wm/AppWindowToken;)Lcom/miui/internal/transition/MiuiLaunchIconInfo;

    move-result-object v0

    :cond_d
    return-object v0
.end method

.method public getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    .registers 6

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    if-eqz v1, :cond_d

    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    invoke-interface {v1, p1, p2}, Lcom/miui/internal/transition/IMiuiGestureControlHelper;->getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    :catch_c
    move-exception v0

    :cond_d
    return-object v2
.end method

.method isAppTransitionSkipped()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGestureController;->mIsAppTransitionSkipped:Z

    return v0
.end method

.method isGameBoostState()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGestureController;->mIsGameBoost:Z

    return v0
.end method

.method public isGestureOpen()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGestureController;->mIsGestureOpen:Z

    return v0
.end method

.method isGestureRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isGestureRunning()Z

    move-result v0

    return v0
.end method

.method public isHomeAppToken(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    invoke-interface {v1, p1}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->isHomeAppToken(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v0

    :cond_d
    return v0
.end method

.method isMistakeTouch()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGestureController;->mIsMistakeTouch:Z

    return v0
.end method

.method keepWallpaperShowing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGestureController;->mKeepWallpaperShowing:Z

    return v0
.end method

.method public launchHome(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->launchHome(Lcom/android/server/wm/AppWindowToken;)V

    :cond_b
    return-void
.end method

.method public notifyDrawRoundRect(Lcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->notifyDrawRoundRect(Lcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;)V

    :cond_9
    return-void
.end method

.method notifyGestureAnimationCancel()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    invoke-interface {v1}, Lcom/miui/internal/transition/IMiuiGestureControlHelper;->notifyGestureAnimationCancel()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method notifyGestureAnimationEnd()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    invoke-interface {v1}, Lcom/miui/internal/transition/IMiuiGestureControlHelper;->notifyGestureAnimationEnd()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method notifyGestureAnimationStart()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    invoke-interface {v1}, Lcom/miui/internal/transition/IMiuiGestureControlHelper;->notifyGestureAnimationStart()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public notifyGestureCancel()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    iget-object v1, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->onGestureCancel(Lcom/android/server/wm/AppWindowToken;)V

    :cond_d
    return-void
.end method

.method public notifyGestureFinish(Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureFinishRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    :goto_9
    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_e
    const/16 v0, 0x3e8

    goto :goto_9
.end method

.method notifyGestureReady(Lcom/android/server/wm/AppWindowToken;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->onGestureReady(Lcom/android/server/wm/AppWindowToken;)V

    :cond_12
    return-void
.end method

.method notifyGestureStartRecents()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    invoke-interface {v1}, Lcom/miui/internal/transition/IMiuiGestureControlHelper;->notifyGestureStartRecents()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method notifyHasSurfaceView(Lcom/android/server/wm/WindowState;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->notifyHasSurfaceView(Lcom/android/server/wm/WindowState;Z)V

    return-void
.end method

.method notifySkipAppTransition()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/MiuiGestureController;->mIsAppTransitionSkipped:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method registerGestureCallback(Lcom/android/server/wm/MiuiGestureController$GestureCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    return-void
.end method

.method registerMiuiGestureControlHelper(Lcom/miui/internal/transition/IMiuiGestureControlHelper;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGestureController;->unlinkToDeathMiuiGestureHelper()V

    new-instance v1, Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;-><init>(Lcom/android/server/wm/MiuiGestureController;Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;)V

    iput-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureHelperDeathRecipient:Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_2b

    :try_start_11
    invoke-interface {p1}, Lcom/miui/internal/transition/IMiuiGestureControlHelper;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureHelperDeathRecipient:Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_1f
    .catchall {:try_start_11 .. :try_end_1b} :catchall_2b

    :try_start_1b
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_2b

    monitor-exit v2

    return-void

    :catch_1f
    move-exception v0

    :try_start_20
    const-string/jumbo v1, "MiuiGestureController"

    const-string/jumbo v3, "MiuiGestureControlHelper linkToDeath failed."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_2b

    monitor-exit v2

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setAlphaByGesture(Lcom/android/server/wm/WindowSurfaceController;F)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->setAlphaByGesture(Lcom/android/server/wm/WindowSurfaceController;F)V

    :cond_9
    return-void
.end method

.method setKeepWallpaperShowing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/MiuiGestureController;->mKeepWallpaperShowing:Z

    return-void
.end method

.method public setLaunchRecentsBehind(Lcom/android/server/wm/AppWindowToken;Z)V
    .registers 4

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->setLaunchRecentsBehind(Lcom/android/server/wm/AppWindowToken;Z)V

    :cond_b
    return-void
.end method

.method setMatrixByGesture(Lcom/android/server/wm/WindowSurfaceController;FFFF)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->setMatrixByGesture(Lcom/android/server/wm/WindowSurfaceController;FFFF)V

    :cond_e
    return-void
.end method

.method setMiuiAppTransitionAnimationHelper(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    if-nez p1, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->clearThumbnail()V

    :cond_9
    return-void
.end method

.method setPositionByGesture(Lcom/android/server/wm/WindowSurfaceController;FF)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->setPositionByGesture(Lcom/android/server/wm/WindowSurfaceController;FF)V

    :cond_9
    return-void
.end method

.method setRecentsAppWindowToken(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->setRecentsAppWindowToken(Lcom/android/server/wm/AppWindowToken;)V

    return-void
.end method

.method setRecentsItemCoordinates(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-virtual {v0, p1, p2, p4, p3}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->setRecentsItemCoordinates(IIII)V

    return-void
.end method

.method setRecentsWindowState(Lcom/android/server/wm/WindowState;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->setRecentsWindowState(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method startGestureAnimation(Lcom/android/server/wm/WindowStateAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->onGestureAnimationStart(Lcom/android/server/wm/WindowStateAnimator;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MiuiGestureController;->mKeepWallpaperShowing:Z

    :cond_c
    return-void
.end method

.method stopGestureAnimation(Lcom/android/server/wm/WindowStateAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->onGestureAnimationStoped(Lcom/android/server/wm/WindowStateAnimator;)V

    :cond_9
    return-void
.end method

.method tryToSetGestureStubWindow(Lcom/android/server/wm/WindowState;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "GestureStub"

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7eb

    if-ne v0, v1, :cond_39

    const-string/jumbo v0, "MiuiGestureController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set gesture stub window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->setGestureStubWindow(Lcom/android/server/wm/WindowState;)V

    :cond_39
    return-void
.end method

.method unregisterMiuiGestureControlHelper(Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mGestureHelperDeathRecipient:Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;

    if-eq p1, v0, :cond_12

    const-string/jumbo v0, "MiuiGestureController"

    const-string/jumbo v2, "The death recipient has changed, we have registered a new GestureHelper so we don\'t need to unregister now."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1a

    monitor-exit v1

    return-void

    :cond_12
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGestureController;->unlinkToDeathMiuiGestureHelper()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureController;->mMiuiGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1a

    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
