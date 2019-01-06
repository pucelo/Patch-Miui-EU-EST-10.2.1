.class public Landroid/app/ActivityView;
.super Landroid/view/ViewGroup;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityView$StateCallback;,
        Landroid/app/ActivityView$SurfaceCallback;
    }
.end annotation


# static fields
.field private static final DISPLAY_NAME:Ljava/lang/String; = "ActivityViewVirtualDisplay"

.field private static final TAG:Ljava/lang/String; = "ActivityView"


# instance fields
.field private mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private mInputForwarder:Landroid/app/IInputForwarder;

.field private mOpened:Z

.field private mSurface:Landroid/view/Surface;

.field private final mSurfaceCallback:Landroid/app/ActivityView$SurfaceCallback;

.field private final mSurfaceView:Landroid/view/SurfaceView;

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method static synthetic -get0(Landroid/app/ActivityView;)Landroid/app/ActivityView$StateCallback;
    .registers 2

    iget-object v0, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/ActivityView;)Landroid/view/Surface;
    .registers 2

    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/ActivityView;)Landroid/view/SurfaceView;
    .registers 2

    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic -get3(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;
    .registers 2

    iget-object v0, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;
    .registers 2

    iput-object p1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/app/ActivityView;)I
    .registers 2

    invoke-direct {p0}, Landroid/app/ActivityView;->getBaseDisplayDensity()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/app/ActivityView;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityView;->initVirtualDisplay()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v0, Landroid/app/ActivityView$SurfaceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityView$SurfaceCallback;-><init>(Landroid/app/ActivityView;Landroid/app/ActivityView$SurfaceCallback;)V

    iput-object v0, p0, Landroid/app/ActivityView;->mSurfaceCallback:Landroid/app/ActivityView$SurfaceCallback;

    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityView;->mSurfaceCallback:Landroid/app/ActivityView$SurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/app/ActivityView;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityView;->mOpened:Z

    iget-object v0, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private getBaseDisplayDensity()I
    .registers 5

    iget-object v2, p0, Landroid/app/ActivityView;->mContext:Landroid/content/Context;

    const-class v3, Landroid/view/WindowManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v2
.end method

.method private initVirtualDisplay()V
    .registers 8

    iget-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Trying to initialize for the second time."

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    iget-object v1, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    iget-object v1, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    iget-object v1, p0, Landroid/app/ActivityView;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityViewVirtualDisplay@"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/app/ActivityView;->getBaseDisplayDensity()I

    move-result v4

    iget-object v5, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v1, :cond_56

    const-string/jumbo v1, "ActivityView"

    const-string/jumbo v4, "Failed to initialize ActivityView"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_56
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    iget-object v4, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v4}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/hardware/input/InputManager;->createInputForwarder(I)Landroid/app/IInputForwarder;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    return-void
.end method

.method private injectInputEvent(Landroid/view/InputEvent;)Z
    .registers 4

    iget-object v1, p0, Landroid/app/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    if-eqz v1, :cond_f

    :try_start_4
    iget-object v1, p0, Landroid/app/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    invoke-interface {v1, p1}, Landroid/app/IInputForwarder;->forwardEvent(Landroid/view/InputEvent;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    return v1

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method private performRelease()V
    .registers 5

    const/4 v3, 0x0

    iget-boolean v1, p0, Landroid/app/ActivityView;->mOpened:Z

    if-nez v1, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityView;->mSurfaceCallback:Landroid/app/ActivityView$SurfaceCallback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v1, p0, Landroid/app/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    if-eqz v1, :cond_17

    iput-object v3, p0, Landroid/app/ActivityView;->mInputForwarder:Landroid/app/IInputForwarder;

    :cond_17
    iget-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_42

    iget-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V

    iput-object v3, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    const/4 v0, 0x1

    :goto_23
    iget-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v3, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    :cond_2e
    if-eqz v0, :cond_39

    iget-object v1, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    if-eqz v1, :cond_39

    iget-object v1, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    invoke-virtual {v1, p0}, Landroid/app/ActivityView$StateCallback;->onActivityViewDestroyed(Landroid/app/ActivityView;)V

    :cond_39
    iget-object v1, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ActivityView;->mOpened:Z

    return-void

    :cond_42
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private prepareActivityOptions()Landroid/app/ActivityOptions;
    .registers 4

    iget-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Trying to start activity before ActivityView is ready."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/app/ActivityView;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    invoke-direct {p0}, Landroid/app/ActivityView;->performRelease()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    :cond_c
    invoke-super {p0}, Landroid/view/ViewGroup;->finalize()V

    return-void

    :catchall_10
    move-exception v0

    invoke-super {p0}, Landroid/view/ViewGroup;->finalize()V

    throw v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Landroid/app/ActivityView;->injectInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLayout(ZIIII)V
    .registers 10

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/app/ActivityView;->mSurfaceView:Landroid/view/SurfaceView;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/SurfaceView;->layout(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ActivityView;->injectInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public release()V
    .registers 3

    iget-object v0, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Trying to release container that is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-direct {p0}, Landroid/app/ActivityView;->performRelease()V

    return-void
.end method

.method public setCallback(Landroid/app/ActivityView$StateCallback;)V
    .registers 3

    iput-object p1, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    iget-object v0, p0, Landroid/app/ActivityView;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$StateCallback;

    invoke-virtual {v0, p0}, Landroid/app/ActivityView$StateCallback;->onActivityViewReady(Landroid/app/ActivityView;)V

    :cond_f
    return-void
.end method

.method public startActivity(Landroid/app/PendingIntent;)V
    .registers 12

    invoke-direct {p0}, Landroid/app/ActivityView;->prepareActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v9

    :try_start_4
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 5

    invoke-direct {p0}, Landroid/app/ActivityView;->prepareActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ActivityView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
