.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$WindowStoppedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$1;,
        Landroid/view/SurfaceView$2;,
        Landroid/view/SurfaceView$3;,
        Landroid/view/SurfaceView$SurfaceControlWithBackground;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SurfaceView"


# instance fields
.field private mAttachedToWindow:Z

.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mConfiguration:Landroid/content/res/Configuration;

.field mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

.field mDrawFinished:Z

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mDrawingStopped:Z

.field mFormat:I

.field private mGlobalListenersAdded:Z

.field mHaveFrame:Z

.field mIsCreating:Z

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field mLastWindowVisibility:Z

.field final mLocation:[I

.field private mPendingReportDraws:I

.field private mRTLastReportedPosition:Landroid/graphics/Rect;

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field private volatile mRtHandlingPositionUpdates:Z

.field final mScreenRect:Landroid/graphics/Rect;

.field private final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSubLayer:I

.field final mSurface:Landroid/view/Surface;

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mSurfaceCreated:Z

.field private mSurfaceFlags:I

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field mSurfaceHeight:I

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mSurfaceSession:Landroid/view/SurfaceSession;

.field mSurfaceWidth:I

.field final mTmpRect:Landroid/graphics/Rect;

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mViewVisibility:Z

.field mVisible:Z

.field mWindowSpaceLeft:I

.field mWindowSpaceTop:I

.field mWindowStopped:Z

.field mWindowVisibility:Z


# direct methods
.method static synthetic -wrap0(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iput-boolean v4, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v0, -0x2

    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    iput v3, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    iput v3, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    iput v5, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mVisible:Z

    iput v3, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v3, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v3, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput v3, p0, Landroid/view/SurfaceView;->mFormat:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v3, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v3, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    iput v5, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p0}, Landroid/view/RenderNode;->requestPositionUpdates(Landroid/view/SurfaceView;)V

    invoke-virtual {p0, v4}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    return-void
.end method

.method private getParentSurfaceInsets()Landroid/graphics/Rect;
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    return-object v1
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .registers 4

    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v2

    return-object v0

    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isAboveParent()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-ltz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method private notifyConfirmedSurfaceView(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->notifySurfaceViewCountChange(Z)V

    :cond_9
    return-void
.end method

.method private onDrawFinished()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    :cond_c
    new-instance v0, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;-><init>(BLjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private performDrawFinished()V
    .registers 4

    iget v0, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    if-lez v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/view/SurfaceView;->notifyDrawFinished()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    :cond_11
    :goto_11
    return-void

    :cond_12
    const-string/jumbo v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "finished drawing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but no pending report draw (extra call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to draw completion runnable?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_14

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_13
    return-void

    :cond_14
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_13
.end method

.method private setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    .registers 10

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_14

    :try_start_d
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/Surface;J)V

    :cond_14
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_38
    .catchall {:try_start_d .. :try_end_38} :catchall_3c

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    return-void

    :catchall_3c
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1
.end method

.method private updateOpaqueFlag()V
    .registers 2

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_f

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    :goto_e
    return-void

    :cond_f
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_e
.end method

.method private updateRequestedVisibility()V
    .registers 2

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_c
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method synthetic -android_view_SurfaceView-mthref-0()V
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a

    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1a

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1a
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_18

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_18

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_18
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 11

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    :cond_d
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0

    :cond_12
    const/4 v7, 0x1

    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_27

    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v7

    :cond_1d
    :goto_1d
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v7, 0x0

    :cond_26
    return v7

    :cond_27
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v6

    if-lez v8, :cond_1d

    if-lez v6, :cond_1d

    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    aget v1, v0, v3

    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v0, v3

    add-int v3, v1, v8

    add-int v4, v2, v6

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_1d
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public isFixedSize()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v2, -0x1

    iget v1, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v1, v2, :cond_a

    iget v1, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method synthetic lambda$-android_view_SurfaceView_32286()V
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceView;->performDrawFinished()V

    return-void
.end method

.method notifyDrawFinished()V
    .registers 3

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->pendingDrawFinished()V

    :cond_9
    iget v1, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->notifyConfirmedSurfaceView(Z)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewRootImpl;->addWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_18

    move v1, v2

    :cond_18
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    iget-object v1, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v1, :cond_38

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    :cond_38
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/view/SurfaceView;->notifyConfirmedSurfaceView(Z)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->removeWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V

    :cond_e
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v2, :cond_24

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-boolean v3, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    :cond_24
    :goto_24
    iget v2, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    if-lez v2, :cond_2c

    invoke-virtual {p0}, Landroid/view/SurfaceView;->notifyDrawFinished()V

    goto :goto_24

    :cond_2c
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->destroy()V

    :cond_3a
    iput-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    const/4 v3, 0x0

    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ltz v2, :cond_19

    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v2, p1, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v1

    :goto_b
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v2, :cond_1e

    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v2, p2, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v0

    :goto_15
    invoke-virtual {p0, v1, v0}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    return-void

    :cond_19
    invoke-static {v3, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    goto :goto_b

    :cond_1e
    invoke-static {v3, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    goto :goto_15
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return v0
.end method

.method public setSecure(Z)V
    .registers 3

    if-eqz p1, :cond_9

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    :goto_8
    return-void

    :cond_9
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_8
.end method

.method public setVisibility(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    xor-int/lit8 v0, v1, 0x1

    :goto_15
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_1c

    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_1c
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public setWindowType(I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_17

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "SurfaceView#setWindowType() has never been a public API."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2e

    const-string/jumbo v0, "SurfaceView"

    const-string/jumbo v1, "If you are calling SurfaceView#setWindowType(TYPE_APPLICATION_PANEL) just to make the SurfaceView to be placed on top of its window, you must call setZOrderOnTop(true) instead."

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    return-void

    :cond_2e
    const-string/jumbo v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SurfaceView#setWindowType(int) is deprecated and now does nothing. type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, -0x1

    :goto_3
    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    return-void

    :cond_6
    const/4 v0, -0x2

    goto :goto_3
.end method

.method public setZOrderOnTop(Z)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    :goto_5
    return-void

    :cond_6
    const/4 v0, -0x2

    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    goto :goto_5
.end method

.method public final surfacePositionLost_uiRtSync(J)V
    .registers 6

    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_a

    return-void

    :cond_a
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2a

    :try_start_25
    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, p1, p2}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_2b

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    const-string/jumbo v1, "SurfaceView"

    const-string/jumbo v2, "Exception configuring surface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a
.end method

.method protected updateSurface()V
    .registers 33

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v2, :cond_7

    return-void

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v28

    if-eqz v28, :cond_13

    move-object/from16 v0, v28

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-nez v2, :cond_14

    :cond_13
    return-void

    :cond_14
    move-object/from16 v0, v28

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_13

    move-object/from16 v0, v28

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, v3}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    move/from16 v18, v0

    if-gtz v18, :cond_45

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v18

    :cond_45
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    move/from16 v17, v0

    if-gtz v17, :cond_51

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v17

    :cond_51
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mFormat:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    if-eq v2, v3, :cond_2b7

    const/4 v15, 0x1

    :goto_5c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mVisible:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v2, v3, :cond_2ba

    const/16 v30, 0x1

    :goto_68
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_72

    if-nez v15, :cond_72

    if-eqz v30, :cond_2be

    :cond_72
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    :goto_76
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    move/from16 v0, v18

    if-ne v2, v0, :cond_86

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    move/from16 v0, v17

    if-eq v2, v0, :cond_2c1

    :cond_86
    const/16 v23, 0x1

    :goto_88
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    if-eq v2, v3, :cond_2c5

    const/16 v31, 0x1

    :goto_94
    const/16 v21, 0x0

    if-nez v13, :cond_a0

    if-nez v15, :cond_a0

    if-nez v23, :cond_a0

    if-nez v30, :cond_a0

    if-eqz v31, :cond_445

    :cond_a0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    :try_start_a9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/SurfaceView;->mFormat:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_12a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    :cond_12a
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getParentSurfaceInsets()Landroid/graphics/Rect;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v13, :cond_2c9

    new-instance v2, Landroid/view/SurfaceSession;

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-direct {v2, v3}, Landroid/view/SurfaceSession;-><init>(Landroid/view/Surface;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->updateOpaqueFlag()V

    new-instance v2, Landroid/view/SurfaceView$SurfaceControlWithBackground;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SurfaceView - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/SurfaceView;->mFormat:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Landroid/view/SurfaceView$SurfaceControlWithBackground;-><init>(Landroid/view/SurfaceView;Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_192
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_19b} :catch_2e7

    xor-int/lit8 v2, v29, 0x1

    :try_start_19d
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_1a4
    .catchall {:try_start_19d .. :try_end_1a4} :catchall_2de

    :try_start_1a4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mSubLayer:I

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayer(I)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v2, :cond_2d0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    :goto_1bc
    if-nez v23, :cond_1c8

    if-nez v13, :cond_1c8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_204

    :cond_1c8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    :cond_204
    if-eqz v23, :cond_215

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setSize(II)V
    :try_end_215
    .catchall {:try_start_1a4 .. :try_end_215} :catchall_2d9

    :cond_215
    :try_start_215
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    if-nez v23, :cond_21c

    if-eqz v13, :cond_21e

    :cond_21c
    const/16 v21, 0x1

    :cond_21e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v2, :cond_2f2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    :goto_246
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    move/from16 v0, v27

    if-ne v2, v0, :cond_31a

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    move/from16 v0, v25

    if-eq v2, v0, :cond_31e

    const/16 v20, 0x1

    :goto_268
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_274
    .catchall {:try_start_215 .. :try_end_274} :catchall_2de

    :try_start_274
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_27b
    .catch Ljava/lang/Exception; {:try_start_274 .. :try_end_27b} :catch_2e7

    if-eqz v29, :cond_322

    :try_start_27d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mDrawFinished:Z

    xor-int/lit8 v2, v2, 0x1

    :goto_283
    or-int v21, v21, v2

    const/4 v12, 0x0

    move/from16 v24, v13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-eqz v2, :cond_336

    if-nez v24, :cond_294

    if-nez v29, :cond_336

    if-eqz v30, :cond_336

    :cond_294
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_336

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v12

    const/4 v2, 0x0

    array-length v3, v12

    :goto_2a9
    if-ge v2, v3, :cond_325

    aget-object v11, v12, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v11, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    :try_end_2b4
    .catchall {:try_start_27d .. :try_end_2b4} :catchall_417

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a9

    :cond_2b7
    const/4 v15, 0x0

    goto/16 :goto_5c

    :cond_2ba
    const/16 v30, 0x0

    goto/16 :goto_68

    :cond_2be
    const/4 v13, 0x0

    goto/16 :goto_76

    :cond_2c1
    const/16 v23, 0x0

    goto/16 :goto_88

    :cond_2c5
    const/16 v31, 0x0

    goto/16 :goto_94

    :cond_2c9
    :try_start_2c9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_2cd
    .catch Ljava/lang/Exception; {:try_start_2c9 .. :try_end_2cd} :catch_2e7

    if-nez v2, :cond_192

    return-void

    :cond_2d0
    :try_start_2d0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->hide()V
    :try_end_2d7
    .catchall {:try_start_2d0 .. :try_end_2d7} :catchall_2d9

    goto/16 :goto_1bc

    :catchall_2d9
    move-exception v2

    :try_start_2da
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v2
    :try_end_2de
    .catchall {:try_start_2da .. :try_end_2de} :catchall_2de

    :catchall_2de
    move-exception v2

    :try_start_2df
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
    :try_end_2e7
    .catch Ljava/lang/Exception; {:try_start_2df .. :try_end_2e7} :catch_2e7

    :catch_2e7
    move-exception v14

    const-string/jumbo v2, "SurfaceView"

    const-string/jumbo v3, "Exception configuring surface"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f1
    :goto_2f1
    return-void

    :cond_2f2
    :try_start_2f2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v10, v2, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v10

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v10

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I
    :try_end_318
    .catchall {:try_start_2f2 .. :try_end_318} :catchall_2de

    goto/16 :goto_246

    :cond_31a
    const/16 v20, 0x1

    goto/16 :goto_268

    :cond_31e
    const/16 v20, 0x0

    goto/16 :goto_268

    :cond_322
    const/4 v2, 0x0

    goto/16 :goto_283

    :cond_325
    :try_start_325
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_336

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->forceScopedDisconnect()V

    :cond_336
    if-eqz v13, :cond_343

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    :cond_343
    if-eqz v23, :cond_35e

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_35e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/Surface;->createFrom(Landroid/view/SurfaceControl;)V

    :cond_35e
    if-eqz v29, :cond_3e9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3e9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v2, :cond_394

    if-nez v24, :cond_374

    if-eqz v30, :cond_394

    :cond_374
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    if-nez v12, :cond_384

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v12

    :cond_384
    const/4 v2, 0x0

    array-length v3, v12

    :goto_386
    if-ge v2, v3, :cond_394

    aget-object v11, v12, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v11, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_386

    :cond_394
    if-nez v13, :cond_39e

    if-nez v15, :cond_39e

    if-nez v23, :cond_39e

    if-nez v30, :cond_39e

    if-eqz v20, :cond_3bc

    :cond_39e
    if-nez v12, :cond_3a4

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v12

    :cond_3a4
    const/4 v2, 0x0

    array-length v3, v12

    :goto_3a6
    if-ge v2, v3, :cond_3bc

    aget-object v11, v12, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mFormat:I

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v11, v4, v5, v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a6

    :cond_3bc
    if-eqz v21, :cond_3e9

    if-nez v12, :cond_3c4

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v12

    :cond_3c4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewRootImpl;->drawPending()V

    new-instance v22, Lcom/android/internal/view/SurfaceCallbackHelper;

    new-instance v2, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Landroid/view/-$Lambda$XmA8Y30pNAdQP9ujRlGx1qfDHH8;-><init>(BLjava/lang/Object;)V

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v12}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V
    :try_end_3e9
    .catchall {:try_start_325 .. :try_end_3e9} :catchall_417

    :cond_3e9
    const/4 v2, 0x0

    :try_start_3ea
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_2f1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2f1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v2, :cond_2f1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->destroy()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    goto/16 :goto_2f1

    :catchall_417
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_444

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_444

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v3, :cond_444

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->destroy()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_444
    throw v2
    :try_end_445
    .catch Ljava/lang/Exception; {:try_start_3ea .. :try_end_445} :catch_2e7

    :cond_445
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->getLocationInSurface([I)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v2, v3, :cond_4f7

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-eq v2, v3, :cond_4fb

    const/16 v19, 0x1

    :goto_46a
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_4ff

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_502

    const/16 v16, 0x1

    :goto_488
    if-nez v19, :cond_48c

    if-eqz v16, :cond_2f1

    :cond_48c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_4f0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    :cond_4f0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_505

    return-void

    :cond_4f7
    const/16 v19, 0x1

    goto/16 :goto_46a

    :cond_4fb
    const/16 v19, 0x0

    goto/16 :goto_46a

    :cond_4ff
    const/16 v16, 0x1

    goto :goto_488

    :cond_502
    const/16 v16, 0x0

    goto :goto_488

    :cond_505
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_513

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2f1

    :cond_513
    :try_start_513
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_51e
    .catch Ljava/lang/Exception; {:try_start_513 .. :try_end_51e} :catch_520

    goto/16 :goto_2f1

    :catch_520
    move-exception v14

    const-string/jumbo v2, "SurfaceView"

    const-string/jumbo v3, "Exception configuring surface"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f1
.end method

.method public final updateSurfacePosition_renderWorker(JIIII)V
    .registers 10

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ne v1, p3, :cond_21

    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v1, p4, :cond_21

    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ne v1, p5, :cond_21

    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v1, p6, :cond_21

    return-void

    :cond_21
    :try_start_21
    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-direct {p0, v1, p1, p2}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2b} :catch_2c

    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    const-string/jumbo v1, "SurfaceView"

    const-string/jumbo v2, "Exception from repositionChild"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method public windowStopped(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method
