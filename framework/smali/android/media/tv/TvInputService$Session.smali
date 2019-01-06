.class public abstract Landroid/media/tv/TvInputService$Session;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;
    }
.end annotation


# static fields
.field private static final POSITION_UPDATE_INTERVAL_MS:I = 0x3e8


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentPositionMs:J

.field private final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mOverlayFrame:Landroid/graphics/Rect;

.field private mOverlayView:Landroid/view/View;

.field private mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

.field private mOverlayViewContainer:Landroid/widget/FrameLayout;

.field private mOverlayViewEnabled:Z

.field private final mPendingActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

.field private mStartPositionMs:J

.field private mSurface:Landroid/view/Surface;

.field private final mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Landroid/media/tv/TvInputService$Session;)J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    return-wide v0
.end method

.method static synthetic -get1(Landroid/media/tv/TvInputService$Session;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/tv/TvInputService$Session;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewEnabled:Z

    return v0
.end method

.method static synthetic -get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    return-object v0
.end method

.method static synthetic -get4(Landroid/media/tv/TvInputService$Session;)J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J

    return-wide v0
.end method

.method static synthetic -get5(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    return-object v0
.end method

.method static synthetic -get6(Landroid/media/tv/TvInputService$Session;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -set0(Landroid/media/tv/TvInputService$Session;J)J
    .registers 4

    iput-wide p1, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    return-wide p1
.end method

.method static synthetic -set1(Landroid/media/tv/TvInputService$Session;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewEnabled:Z

    return p1
.end method

.method static synthetic -set2(Landroid/media/tv/TvInputService$Session;J)J
    .registers 4

    iput-wide p1, p0, Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J

    return-wide p1
.end method

.method static synthetic -wrap0(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/ITvInputSessionCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$Session;->initialize(Landroid/media/tv/ITvInputSessionCallback;)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/media/tv/TvInputService$Session;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->notifyTimeShiftCurrentPositionChanged(J)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/media/tv/TvInputService$Session;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->notifyTimeShiftStartPositionChanged(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    iput-wide v2, p0, Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J

    iput-wide v2, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    new-instance v0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;-><init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mPendingActions:Ljava/util/List;

    iput-object p1, p0, Landroid/media/tv/TvInputService$Session;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1e

    :goto_c
    monitor-exit v1

    return-void

    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1e

    goto :goto_c

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_21
    :try_start_21
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    goto :goto_c
.end method

.method private initialize(Landroid/media/tv/ITvInputSessionCallback;)V
    .registers 6

    iget-object v3, p0, Landroid/media/tv/TvInputService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1b

    goto :goto_b

    :catchall_1b
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1e
    :try_start_1e
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_1b

    monitor-exit v3

    return-void
.end method

.method private notifyTimeShiftCurrentPositionChanged(J)V
    .registers 4

    new-instance v0, Landroid/media/tv/TvInputService$Session$12;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$Session$12;-><init>(Landroid/media/tv/TvInputService$Session;J)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyTimeShiftStartPositionChanged(J)V
    .registers 4

    new-instance v0, Landroid/media/tv/TvInputService$Session$11;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$Session$11;-><init>(Landroid/media/tv/TvInputService$Session;J)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 11

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/tv/TvInputService$Session;->removeOverlayView(Z)V

    :cond_9
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session;->mWindowToken:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/TvInputService$Session;->onOverlayViewSizeChanged(II)V

    iget-boolean v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewEnabled:Z

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    invoke-virtual {p0}, Landroid/media/tv/TvInputService$Session;->onCreateOverlayView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayView:Landroid/view/View;

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayView:Landroid/view/View;

    if-nez v0, :cond_2a

    return-void

    :cond_2a
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;->cancel(Z)Z

    iput-object v3, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

    :cond_36
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v5, 0x3ec

    const/16 v6, 0x218

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-eqz v0, :cond_57

    const v6, 0x1000218

    :cond_57
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    const/4 v7, -0x2

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)I
    .registers 12

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    instance-of v5, p1, Landroid/view/KeyEvent;

    if-eqz v5, :cond_44

    move-object v1, p1

    check-cast v1, Landroid/view/KeyEvent;

    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v1, p0, v5, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    return v7

    :cond_14
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Landroid/media/tv/TvInputService;->isNavigationKey(I)Z

    move-result v0

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    move-result v5

    if-nez v5, :cond_40

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0xde

    if-ne v5, v6, :cond_42

    const/4 v3, 0x1

    :cond_2f
    :goto_2f
    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_3f

    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_3f

    if-eqz v3, :cond_6e

    :cond_3f
    return v8

    :cond_40
    const/4 v3, 0x1

    goto :goto_2f

    :cond_42
    const/4 v3, 0x0

    goto :goto_2f

    :cond_44
    instance-of v5, p1, Landroid/view/MotionEvent;

    if-eqz v5, :cond_2f

    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-virtual {p0, v2}, Landroid/media/tv/TvInputService$Session;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2f

    return v7

    :cond_5c
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_67

    invoke-virtual {p0, v2}, Landroid/media/tv/TvInputService$Session;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2f

    return v7

    :cond_67
    invoke-virtual {p0, v2}, Landroid/media/tv/TvInputService$Session;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2f

    return v7

    :cond_6e
    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    move-result v5

    if-nez v5, :cond_7f

    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Landroid/view/ViewRootImpl;->windowFocusChanged(ZZ)V

    :cond_7f
    if-eqz v0, :cond_93

    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_93

    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    return v7

    :cond_93
    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    const/4 v5, -0x1

    return v5
.end method

.method dispatchSurfaceChanged(III)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/tv/TvInputService$Session;->onSurfaceChanged(III)V

    return-void
.end method

.method public layoutSurface(IIII)V
    .registers 11

    if-gt p1, p3, :cond_4

    if-le p2, p4, :cond_d

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Landroid/media/tv/TvInputService$Session$13;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/TvInputService$Session$13;-><init>(Landroid/media/tv/TvInputService$Session;IIII)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyChannelRetuned(Landroid/net/Uri;)V
    .registers 3

    new-instance v0, Landroid/media/tv/TvInputService$Session$3;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$3;-><init>(Landroid/media/tv/TvInputService$Session;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyContentAllowed()V
    .registers 2

    new-instance v0, Landroid/media/tv/TvInputService$Session$8;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputService$Session$8;-><init>(Landroid/media/tv/TvInputService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyContentBlocked(Landroid/media/tv/TvContentRating;)V
    .registers 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/media/tv/TvInputService$Session$9;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$9;-><init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/TvContentRating;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifySessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/media/tv/TvInputService$Session$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$Session$2;-><init>(Landroid/media/tv/TvInputService$Session;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyTimeShiftStatusChanged(I)V
    .registers 3

    new-instance v0, Landroid/media/tv/TvInputService$Session$10;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$10;-><init>(Landroid/media/tv/TvInputService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyTrackSelected(ILjava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/media/tv/TvInputService$Session$5;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$Session$5;-><init>(Landroid/media/tv/TvInputService$Session;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyTracksChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Landroid/media/tv/TvInputService$Session$4;

    invoke-direct {v1, p0, v0}, Landroid/media/tv/TvInputService$Session$4;-><init>(Landroid/media/tv/TvInputService$Session;Ljava/util/List;)V

    invoke-direct {p0, v1}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyVideoAvailable()V
    .registers 2

    new-instance v0, Landroid/media/tv/TvInputService$Session$6;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputService$Session$6;-><init>(Landroid/media/tv/TvInputService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyVideoUnavailable(I)V
    .registers 5

    if-ltz p1, :cond_5

    const/4 v0, 0x4

    if-le p1, v0, :cond_1f

    :cond_5
    const-string/jumbo v0, "TvInputService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyVideoUnavailable - unknown reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    new-instance v0, Landroid/media/tv/TvInputService$Session$7;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$7;-><init>(Landroid/media/tv/TvInputService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onCreateOverlayView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onOverlayViewSizeChanged(II)V
    .registers 3

    return-void
.end method

.method public abstract onRelease()V
.end method

.method public onSelectTrack(ILjava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onSetCaptionEnabled(Z)V
.end method

.method public onSetMain(Z)V
    .registers 2

    return-void
.end method

.method public abstract onSetStreamVolume(F)V
.end method

.method public abstract onSetSurface(Landroid/view/Surface;)Z
.end method

.method public onSurfaceChanged(III)V
    .registers 4

    return-void
.end method

.method public onTimeShiftGetCurrentPosition()J
    .registers 3

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public onTimeShiftGetStartPosition()J
    .registers 3

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public onTimeShiftPause()V
    .registers 1

    return-void
.end method

.method public onTimeShiftPlay(Landroid/net/Uri;)V
    .registers 2

    return-void
.end method

.method public onTimeShiftResume()V
    .registers 1

    return-void
.end method

.method public onTimeShiftSeekTo(J)V
    .registers 3

    return-void
.end method

.method public onTimeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 2

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onTune(Landroid/net/Uri;)Z
.end method

.method public onTune(Landroid/net/Uri;Landroid/os/Bundle;)Z
    .registers 4

    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onTune(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public onUnblockContent(Landroid/media/tv/TvContentRating;)V
    .registers 2

    return-void
.end method

.method relayoutOverlayView(Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eq v0, v1, :cond_28

    :cond_10
    :goto_10
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/TvInputService$Session;->onOverlayViewSizeChanged(II)V

    :cond_1d
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewEnabled:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_35

    :cond_27
    return-void

    :cond_28
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_1d

    goto :goto_10

    :cond_35
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method release()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/media/tv/TvInputService$Session;->onRelease()V

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    :cond_f
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_13
    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_27

    monitor-exit v1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/tv/TvInputService$Session;->removeOverlayView(Z)V

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :catchall_27
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method removeOverlayView(Z)V
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    iput-object v2, p0, Landroid/media/tv/TvInputService$Session;->mWindowToken:Landroid/os/IBinder;

    iput-object v2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    :cond_7
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayView:Landroid/view/View;

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    iput-object v2, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    :cond_1f
    return-void
.end method

.method scheduleOverlayViewCleanup()V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_19

    new-instance v1, Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

    invoke-direct {v1, v2}, Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;-><init>(Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;)V

    iput-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/TvInputService$OverlayViewCleanUpTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_19
    return-void
.end method

.method selectTrack(ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->onSelectTrack(ILjava/lang/String;)Z

    return-void
.end method

.method setCaptionEnabled(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onSetCaptionEnabled(Z)V

    return-void
.end method

.method setMain(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onSetMain(Z)V

    return-void
.end method

.method public setOverlayViewEnabled(Z)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputService$Session$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputService$Session$1;-><init>(Landroid/media/tv/TvInputService$Session;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setStreamVolume(F)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onSetStreamVolume(F)V

    return-void
.end method

.method setSurface(Landroid/view/Surface;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onSetSurface(Landroid/view/Surface;)Z

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_c
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method timeShiftEnablePositionTracking(Z)V
    .registers 6

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz p1, :cond_c

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-wide v2, p0, Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J

    iput-wide v2, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    goto :goto_b
.end method

.method timeShiftPause()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/tv/TvInputService$Session;->onTimeShiftPause()V

    return-void
.end method

.method timeShiftPlay(Landroid/net/Uri;)V
    .registers 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onTimeShiftPlay(Landroid/net/Uri;)V

    return-void
.end method

.method timeShiftResume()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/tv/TvInputService$Session;->onTimeShiftResume()V

    return-void
.end method

.method timeShiftSeekTo(J)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->onTimeShiftSeekTo(J)V

    return-void
.end method

.method timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onTimeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method tune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 5

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->onTune(Landroid/net/Uri;Landroid/os/Bundle;)Z

    return-void
.end method

.method unblockContent(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/tv/TvInputService$Session;->onUnblockContent(Landroid/media/tv/TvContentRating;)V

    return-void
.end method
