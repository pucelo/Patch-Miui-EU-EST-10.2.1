.class public final Landroid/view/WindowManagerGlobal;
.super Ljava/lang/Object;
.source "WindowManagerGlobal.java"


# static fields
.field public static final ADD_APP_EXITING:I = -0x4

.field public static final ADD_BAD_APP_TOKEN:I = -0x1

.field public static final ADD_BAD_SUBWINDOW_TOKEN:I = -0x2

.field public static final ADD_DUPLICATE_ADD:I = -0x5

.field public static final ADD_FLAG_ALWAYS_CONSUME_NAV_BAR:I = 0x4

.field public static final ADD_FLAG_APP_VISIBLE:I = 0x2

.field public static final ADD_FLAG_IN_TOUCH_MODE:I = 0x1

.field public static final ADD_INVALID_DISPLAY:I = -0x9

.field public static final ADD_INVALID_TYPE:I = -0xa

.field public static final ADD_MULTIPLE_SINGLETON:I = -0x7

.field public static final ADD_NOT_APP_TOKEN:I = -0x3

.field public static final ADD_OKAY:I = 0x0

.field public static final ADD_PERMISSION_DENIED:I = -0x8

.field public static final ADD_STARTING_NOT_NEEDED:I = -0x6

.field public static final RELAYOUT_DEFER_SURFACE_DESTROY:I = 0x2

.field public static final RELAYOUT_INSETS_PENDING:I = 0x1

.field public static final RELAYOUT_RES_CONSUME_ALWAYS_NAV_BAR:I = 0x40

.field public static final RELAYOUT_RES_DRAG_RESIZING_DOCKED:I = 0x8

.field public static final RELAYOUT_RES_DRAG_RESIZING_FREEFORM:I = 0x10

.field public static final RELAYOUT_RES_FIRST_TIME:I = 0x2

.field public static final RELAYOUT_RES_IN_TOUCH_MODE:I = 0x1

.field public static final RELAYOUT_RES_SURFACE_CHANGED:I = 0x4

.field public static final RELAYOUT_RES_SURFACE_RESIZED:I = 0x20

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

.field private static sWindowManagerService:Landroid/view/IWindowManager;

.field private static sWindowSession:Landroid/view/IWindowSession;


# instance fields
.field private final mDyingViews:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mRoots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemPropertyUpdater:Ljava/lang/Runnable;

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/view/WindowManagerGlobal;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Landroid/view/WindowManagerGlobal;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    return-object v0
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    return-void
.end method

.method private doTrimForeground()V
    .registers 6

    const/4 v0, 0x0

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_c
    if-ltz v1, :cond_31

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_2a

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v3

    if-nez v3, :cond_2a

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v3, :cond_2a

    const/4 v0, 0x1

    :goto_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_2a
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2e

    goto :goto_27

    :catchall_2e
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_31
    monitor-exit v4

    if-nez v0, :cond_39

    const/16 v3, 0x50

    invoke-static {v3}, Landroid/view/ThreadedRenderer;->trimMemory(I)V

    :cond_39
    return-void
.end method

.method private findViewLocked(Landroid/view/View;Z)I
    .registers 7

    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz p2, :cond_2b

    if-gez v0, :cond_2b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "View="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not attached to window manager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    return v0
.end method

.method public static getInstance()Landroid/view/WindowManagerGlobal;
    .registers 2

    const-class v1, Landroid/view/WindowManagerGlobal;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    if-nez v0, :cond_e

    new-instance v0, Landroid/view/WindowManagerGlobal;

    invoke-direct {v0}, Landroid/view/WindowManagerGlobal;-><init>()V

    sput-object v0, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    :cond_e
    sget-object v0, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getWindowManagerService()Landroid/view/IWindowManager;
    .registers 3

    const-class v2, Landroid/view/WindowManagerGlobal;

    monitor-enter v2

    :try_start_3
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    if-nez v1, :cond_21

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2b

    :try_start_14
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    if-eqz v1, :cond_21

    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getCurrentAnimatorScale()F

    move-result v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->setDurationScale(F)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_21} :catch_25
    .catchall {:try_start_14 .. :try_end_21} :catchall_2b

    :cond_21
    :try_start_21
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_2b

    monitor-exit v2

    return-object v1

    :catch_25
    move-exception v0

    :try_start_26
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWindowSession()Landroid/view/IWindowSession;
    .registers 7

    const-class v4, Landroid/view/WindowManagerGlobal;

    monitor-enter v4

    :try_start_3
    sget-object v3, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2c

    if-nez v3, :cond_22

    :try_start_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    new-instance v3, Landroid/view/WindowManagerGlobal$1;

    invoke-direct {v3}, Landroid/view/WindowManagerGlobal$1;-><init>()V

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getClient()Lcom/android/internal/view/IInputMethodClient;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputContext()Lcom/android/internal/view/IInputContext;

    move-result-object v6

    invoke-interface {v2, v3, v5, v6}, Landroid/view/IWindowManager;->openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v3

    sput-object v3, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_22} :catch_26
    .catchall {:try_start_7 .. :try_end_22} :catchall_2c

    :cond_22
    :try_start_22
    sget-object v3, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_2c

    monitor-exit v4

    return-object v3

    :catch_26
    move-exception v0

    :try_start_27
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static initialize()V
    .registers 0

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    return-void
.end method

.method public static peekWindowSession()Landroid/view/IWindowSession;
    .registers 2

    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private removeViewLocked(IZ)V
    .registers 9

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->windowDismissed(Landroid/os/IBinder;)V

    :cond_24
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->die(Z)Z

    move-result v0

    if-eqz v3, :cond_34

    invoke-virtual {v3, v5}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    if-eqz v0, :cond_34

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_34
    return-void
.end method

.method public static shouldDestroyEglContext(I)Z
    .registers 3

    const/4 v1, 0x1

    const/16 v0, 0x50

    if-lt p0, v0, :cond_6

    return v1

    :cond_6
    const/16 v0, 0x3c

    if-lt p0, v0, :cond_13

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public static trimForeground()V
    .registers 2

    sget-boolean v1, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    if-eqz v1, :cond_11

    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-direct {v0}, Landroid/view/WindowManagerGlobal;->doTrimForeground()V

    :cond_11
    return-void
.end method

.method private updateBlurRatioOnly(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 11

    const/4 v7, 0x0

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_4e

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    if-eqz v3, :cond_4e

    iget-object v5, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_4e

    iget-object v5, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->blurRatio:F

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->blurRatio:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_4e

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v5, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v5}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    invoke-virtual {v2, p2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    and-int v0, v4, v5

    const v5, -0x40000001    # -1.9999999f

    and-int v1, v4, v5

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v5, v5, 0xf0

    if-nez v5, :cond_3d

    const v5, -0x40000201    # -1.9999388f

    and-int v1, v4, v5

    :cond_3d
    iget-object v5, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->blurRatio:F

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->blurRatio:F

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->blurRatio:F

    invoke-virtual {v3, v5}, Landroid/view/ViewRootImpl;->updateBlurRatio(F)V

    if-eqz v0, :cond_4e

    if-nez v1, :cond_4e

    const/4 v5, 0x1

    return v5

    :cond_4e
    return v7
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;)V
    .registers 18

    if-nez p1, :cond_b

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "view must not be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_b
    if-nez p3, :cond_16

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "display must not be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_16
    instance-of v9, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v9, :cond_23

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "Params must be WindowManager.LayoutParams"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_23
    move-object v8, p2

    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    if-eqz p4, :cond_8f

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/view/Window;->adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2d
    :goto_2d
    const/4 v6, 0x0

    iget-object v10, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_31
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    if-nez v9, :cond_41

    new-instance v9, Landroid/view/WindowManagerGlobal$2;

    invoke-direct {v9, p0}, Landroid/view/WindowManagerGlobal$2;-><init>(Landroid/view/WindowManagerGlobal;)V

    iput-object v9, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    invoke-static {v9}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    :cond_41
    const/4 v9, 0x0

    invoke-direct {p0, p1, v9}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v5

    if-ltz v5, :cond_5b

    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v9, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a8

    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/ViewRootImpl;

    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->doDie()V

    :cond_5b
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x3e8

    if-lt v9, v11, :cond_cc

    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7cf

    if-gt v9, v11, :cond_cc

    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_6e
    if-ge v4, v2, :cond_cc

    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v9}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    iget-object v11, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v9, v11, :cond_8c

    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/view/View;

    move-object v6, v0
    :try_end_8c
    .catchall {:try_start_31 .. :try_end_8c} :catchall_c9

    :cond_8c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    :cond_8f
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x20000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_2d

    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v10, 0x1000000

    or-int/2addr v9, v10

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2d

    :cond_a8
    :try_start_a8
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "View "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " has already been added to the window manager."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_c9
    .catchall {:try_start_a8 .. :try_end_c9} :catchall_c9

    :catchall_c9
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_cc
    :try_start_cc
    new-instance v7, Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-direct {v7, v9, v0}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e9
    .catchall {:try_start_cc .. :try_end_e9} :catchall_c9

    :try_start_e9
    invoke-virtual {v7, p1, v8, v6}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    :try_end_ec
    .catch Ljava/lang/RuntimeException; {:try_start_e9 .. :try_end_ec} :catch_ee
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_c9

    monitor-exit v10

    return-void

    :catch_ee
    move-exception v3

    const/4 v9, 0x0

    :try_start_f0
    invoke-direct {p0, p1, v9}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v5

    if-ltz v5, :cond_103

    const-string/jumbo v9, "WindowManager"

    const-string/jumbo v11, "BadTokenException or InvalidDisplayException, clean up."

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    invoke-direct {p0, v5, v9}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    :cond_103
    throw v3
    :try_end_104
    .catchall {:try_start_f0 .. :try_end_104} :catchall_c9
.end method

.method public changeCanvasOpacity(Landroid/os/IBinder;Z)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_e
    if-ltz v0, :cond_2c

    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_29

    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    invoke-virtual {v1, p2}, Landroid/view/ViewRootImpl;->changeCanvasOpacity(Z)V
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_2e

    monitor-exit v2

    return-void

    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_2c
    monitor-exit v2

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/view/WindowManagerGlobal;->closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_7c

    if-eqz p2, :cond_16

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p2, :cond_79

    :cond_16
    if-eqz p1, :cond_24

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_79

    :cond_24
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    if-eqz p3, :cond_75

    new-instance v2, Landroid/view/WindowLeaked;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " has leaked window "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " that was originally added here"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getLocation()Landroid/view/WindowLeaked;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/WindowLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, ""

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_75
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_7e

    :cond_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_7c
    monitor-exit v5

    return-void

    :catchall_7e
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method doRemoveView(Landroid/view/ViewRootImpl;)V
    .registers 6

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_22

    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_31

    :cond_22
    monitor-exit v3

    sget-boolean v2, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    if-eqz v2, :cond_30

    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-direct {p0}, Landroid/view/WindowManagerGlobal;->doTrimForeground()V

    :cond_30
    return-void

    :catchall_31
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 20

    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v8, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v8, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    :try_start_c
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_f6

    :try_start_11
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string/jumbo v12, "Profile data in ms:"

    invoke-virtual {v8, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v2, :cond_5c

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewRootImpl;

    invoke-static {v10}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v12, "\n\t%s (visibility=%d)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v12

    iget-object v12, v12, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v12, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v9, :cond_59

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v9, v8, v0, v1}, Landroid/view/ThreadedRenderer;->dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    :cond_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_5c
    const-string/jumbo v12, "\nView hierarchy:\n"

    invoke-virtual {v8, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x2

    new-array v6, v12, [I

    const/4 v5, 0x0

    :goto_68
    if-ge v5, v2, :cond_b6

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewRootImpl;

    invoke-virtual {v10, v6}, Landroid/view/ViewRootImpl;->dumpGfxInfo([I)V

    invoke-static {v10}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v12, "  %s\n  %d views, %.2f kB of display lists"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x0

    aget v15, v6, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aget v15, v6, v15

    int-to-float v15, v15

    const/high16 v16, 0x44800000    # 1024.0f

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v16, 0x2

    aput-object v15, v14, v16

    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v12, "\n\n"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v12, 0x0

    aget v12, v6, v12

    add-int/2addr v11, v12

    const/4 v12, 0x1

    aget v12, v6, v12

    add-int/2addr v3, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    :cond_b6
    const-string/jumbo v12, "\nTotal ViewRootImpl: %d\n"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v12, "Total Views:        %d\n"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v12, "Total DisplayList:  %.2f kB\n\n"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    int-to-float v15, v3

    const/high16 v16, 0x44800000    # 1024.0f

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_ee
    .catchall {:try_start_11 .. :try_end_ee} :catchall_f3

    :try_start_ee
    monitor-exit v13
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_f6

    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    return-void

    :catchall_f3
    move-exception v12

    :try_start_f4
    monitor-exit v13

    throw v12
    :try_end_f6
    .catchall {:try_start_f4 .. :try_end_f6} :catchall_f6

    :catchall_f6
    move-exception v12

    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    throw v12
.end method

.method public getRootView(Ljava/lang/String;)Landroid/view/View;
    .registers 6

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_b
    if-ltz v0, :cond_28

    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_2b

    move-result-object v2

    monitor-exit v3

    return-object v2

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_28
    monitor-exit v3

    const/4 v2, 0x0

    return-object v2

    :catchall_2b
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_8
    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v3, :cond_65

    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v8, :cond_20

    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_20
    iget-object v8, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eq v8, p1, :cond_53

    const/4 v1, 0x0

    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x3e8

    if-lt v8, v10, :cond_51

    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7cf

    if-gt v8, v10, :cond_51

    const/4 v2, 0x0

    :goto_32
    if-ge v2, v3, :cond_51

    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-ne v8, v10, :cond_62

    iget-object v8, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v8, p1, :cond_62

    const/4 v1, 0x1

    :cond_51
    if-eqz v1, :cond_1d

    :cond_53
    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/ViewRootImpl;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catchall {:try_start_8 .. :try_end_5e} :catchall_5f

    goto :goto_1d

    :catchall_5f
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_65
    monitor-exit v9

    return-object v7
.end method

.method public getViewRootNames()[Ljava/lang/String;
    .registers 6

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_1f

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_21

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1f
    monitor-exit v4

    return-object v1

    :catchall_21
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getWindowView(Landroid/os/IBinder;)Landroid/view/View;
    .registers 7

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_1f

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_22

    move-result-object v3

    if-ne v3, p1, :cond_1c

    monitor-exit v4

    return-object v2

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1f
    monitor-exit v4

    const/4 v3, 0x0

    return-object v3

    :catchall_22
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public removeView(Landroid/view/View;Z)V
    .registers 9

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "view must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_f
    invoke-direct {p0, p1, v2}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v1, p2}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_4b

    if-ne v0, p1, :cond_26

    monitor-exit v3

    return-void

    :cond_26
    :try_start_26
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Calling with view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " but the ViewAncestor is attached to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4b
    .catchall {:try_start_26 .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public reportNewConfiguration(Landroid/content/res/Configuration;)V
    .registers 8

    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_21

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_1f

    :try_start_11
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl;->requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_24

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1f
    monitor-exit v5

    return-void

    :catchall_21
    move-exception v4

    :goto_22
    monitor-exit v5

    throw v4

    :catchall_24
    move-exception v4

    move-object p1, v0

    goto :goto_22
.end method

.method public setStoppedState(Landroid/os/IBinder;Z)V
    .registers 8

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_b
    if-ltz v1, :cond_29

    if-eqz p1, :cond_1b

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_26

    :cond_1b
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->setWindowStopped(Z)V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2b

    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_29
    monitor-exit v4

    return-void

    :catchall_2b
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public trimMemory(I)V
    .registers 5

    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {p1}, Landroid/view/WindowManagerGlobal;->shouldDestroyEglContext(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_f
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_17
    if-ltz v0, :cond_27

    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_35

    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_27
    monitor-exit v2

    const/16 p1, 0x50

    :cond_2a
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->trimMemory(I)V

    sget-boolean v1, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    if-eqz v1, :cond_34

    invoke-direct {p0}, Landroid/view/WindowManagerGlobal;->doTrimForeground()V

    :cond_34
    return-void

    :catchall_35
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 8

    if-nez p1, :cond_b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "view must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    instance-of v3, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v3, :cond_18

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Params must be WindowManager.LayoutParams"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_18
    move-object v2, p2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, p1, v2}, Landroid/view/WindowManagerGlobal;->updateBlurRatioOnly(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    if-eqz v3, :cond_22

    return-void

    :cond_22
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v3, 0x1

    :try_start_29
    invoke-direct {p0, p1, v3}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v0

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    :try_end_43
    .catchall {:try_start_29 .. :try_end_43} :catchall_45

    monitor-exit v4

    return-void

    :catchall_45
    move-exception v3

    monitor-exit v4

    throw v3
.end method
