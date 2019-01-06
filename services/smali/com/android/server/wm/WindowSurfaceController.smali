.class Lcom/android/server/wm/WindowSurfaceController;
.super Ljava/lang/Object;
.source "WindowSurfaceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field final mAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field private mHiddenForCrop:Z

.field private mHiddenForOtherReasons:Z

.field private mLastDsdx:F

.field private mLastDsdy:F

.field private mLastDtdx:F

.field private mLastDtdy:F

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSurfaceAlpha:F

.field private mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

.field private mSurfaceH:F

.field private mSurfaceLayer:I

.field private mSurfaceShown:Z

.field private mSurfaceW:F

.field private mSurfaceX:F

.field private mSurfaceY:F

.field private final mWindowSession:Lcom/android/server/wm/Session;

.field private final mWindowType:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/WindowStateAnimator;II)V
    .registers 23

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move/from16 v0, p3

    int-to-float v2, v0

    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:F

    move/from16 v0, p4

    int-to-float v2, v0

    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:F

    iput-object p2, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p7

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowType:I

    iget-object v2, v12, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    const-string/jumbo v2, "new SurfaceControl"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v2, Lcom/android/server/wm/SurfaceControlWithBackground;

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move-object v11, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/wm/SurfaceControlWithBackground;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIIILcom/android/server/wm/WindowSurfaceController;)V

    iput-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v2, v2, Lcom/android/server/wm/RootWindowContainer;->mSurfaceTraceEnabled:Z

    if-eqz v2, :cond_8c

    new-instance v2, Lcom/android/server/wm/RemoteSurfaceTrace;

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mSurfaceTraceFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-direct {v2, v3, v4, v12}, Lcom/android/server/wm/RemoteSurfaceTrace;-><init>(Ljava/io/FileDescriptor;Lcom/android/server/wm/SurfaceControlWithBackground;Lcom/android/server/wm/WindowState;)V

    iput-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    :cond_8c
    return-void
.end method

.method private hideSurface()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mHandleByGesture:Z

    if-eqz v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-nez v1, :cond_10

    return-void

    :cond_10
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    :try_start_14
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceControlWithBackground;->hide()V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception hiding surface in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method private logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  SURFACE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_29

    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    return-void

    :cond_29
    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private showSurface()Z
    .registers 6

    const/4 v4, 0x1

    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceControlWithBackground;->show()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_a} :catch_b

    return v4

    :catch_b
    move-exception v0

    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failure showing surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v2, "show"

    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    return v1
.end method

.method private updateVisibility()Z
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_d

    return v2

    :cond_d
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    if-eqz v0, :cond_1e

    :cond_15
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->hideSurface()V

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1e
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-nez v0, :cond_27

    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->showSurface()Z

    move-result v0

    return v0

    :cond_27
    return v2
.end method


# virtual methods
.method clearCropInTransaction(Z)V
    .registers 8

    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/SurfaceControlWithBackground;->setWindowCrop(Landroid/graphics/Rect;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_e} :catch_f

    :cond_e
    :goto_e
    return-void

    :catch_f
    move-exception v1

    sget-object v2, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error setting clearing crop of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p1, :cond_e

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v3, "crop"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    goto :goto_e
.end method

.method clearWindowContentFrameStats()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceControlWithBackground;->clearContentFrameStats()Z

    move-result v0

    return v0
.end method

.method deferTransactionUntil(Landroid/os/IBinder;J)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/SurfaceControlWithBackground;->deferTransactionUntil(Landroid/os/IBinder;J)V

    return-void
.end method

.method destroyInTransaction()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceControlWithBackground;->destroy()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_b} :catch_11
    .catchall {:try_start_2 .. :try_end_b} :catchall_2f

    :cond_b
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    :goto_e
    iput-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    return-void

    :catch_11
    move-exception v0

    :try_start_12
    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error destroying surface in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_2f

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    goto :goto_e

    :catchall_2f
    move-exception v1

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    iput-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    throw v1
.end method

.method detachChildren()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceControlWithBackground;->detachChildren()V

    :cond_9
    return-void
.end method

.method disconnectInTransaction()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceControlWithBackground;->disconnect()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error disconnecting surface in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 5

    if-eqz p3, :cond_10

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Surface: shown="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " layer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, " rect=("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, ") "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, " x "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, " transform=("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method forceScaleableInTransaction(Z)V
    .registers 4

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :goto_3
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/SurfaceControlWithBackground;->setOverrideScalingMode(I)V

    return-void

    :cond_9
    const/4 v0, -0x1

    goto :goto_3
.end method

.method getContainerRect(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->getContainerRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method getHandle()Landroid/os/IBinder;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceControlWithBackground;->getHandle()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method getHeight()F
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:F

    return v0
.end method

.method getLayer()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    return v0
.end method

.method getShown()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    return v0
.end method

.method getSurface(Landroid/view/Surface;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {p1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method getWidth()F
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:F

    return v0
.end method

.method getWindowContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z

    move-result v0

    return v0
.end method

.method getX()F
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    return v0
.end method

.method getY()F
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    return v0
.end method

.method hasSurface()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method hideInTransaction(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z

    return-void
.end method

.method installRemoteTrace(Ljava/io/FileDescriptor;)V
    .registers 5

    new-instance v0, Lcom/android/server/wm/RemoteSurfaceTrace;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/wm/RemoteSurfaceTrace;-><init>(Ljava/io/FileDescriptor;Lcom/android/server/wm/SurfaceControlWithBackground;Lcom/android/server/wm/WindowState;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    return-void
.end method

.method prepareToShowInTransaction(FFFFFZ)Z
    .registers 13

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mHandleByGesture:Z

    if-eqz v1, :cond_9

    return v4

    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-eqz v1, :cond_21

    :try_start_d
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->setAlpha(F)V

    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    iput p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    iput p4, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    iput p5, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/wm/SurfaceControlWithBackground;->setMatrix(FFFF)V
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_21} :catch_22

    :cond_21
    return v5

    :catch_22
    move-exception v0

    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error updating surface in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p6, :cond_48

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v2, "update"

    invoke-virtual {v1, v2, v5}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    :cond_48
    return v4
.end method

.method removeRemoteTrace()V
    .registers 3

    new-instance v0, Lcom/android/server/wm/SurfaceControlWithBackground;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-direct {v0, v1}, Lcom/android/server/wm/SurfaceControlWithBackground;-><init>(Lcom/android/server/wm/SurfaceControlWithBackground;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    return-void
.end method

.method reparentChildrenInTransaction(Lcom/android/server/wm/WindowSurfaceController;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceControlWithBackground;->reparentChildren(Landroid/os/IBinder;)V

    :cond_11
    return-void
.end method

.method setAlphaByGesture(F)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->setAlpha(F)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception setAlphaByGesture surface in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setBlur(Z)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->setBlur(Z)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception setBlur surface in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method setBlurModeInTransaction(I)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->setBlurMode(I)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error setBlurMode surface in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method setBlurRatio(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-eqz v0, :cond_f

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->setBlurRatio(F)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_f
    return-void

    :catchall_10
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method setBlurRatioInTransaction(F)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->setBlurRatio(F)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error setBlurRatio surface in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method setCropInTransaction(Landroid/graphics/Rect;Z)V
    .registers 8

    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_19

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->setWindowCrop(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z

    :cond_18
    :goto_18
    return-void

    :cond_19
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_24} :catch_25

    goto :goto_18

    :catch_25
    move-exception v0

    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error setting crop surface of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " crop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p2, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v2, "crop"

    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    goto :goto_18
.end method

.method setFinalCropInTransaction(Landroid/graphics/Rect;)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->setFinalCrop(Landroid/graphics/Rect;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error disconnecting surface in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method setGeometryAppliesWithResizeInTransaction(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceControlWithBackground;->setGeometryAppliesWithResize()V

    return-void
.end method

.method setLayer(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_9
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->usesRelativeZOrdering()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceControlWithBackground;->getHandle()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/SurfaceControlWithBackground;->setRelativeLayer(Landroid/os/IBinder;I)V
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_39

    :goto_2b
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    :cond_30
    return-void

    :cond_31
    :try_start_31
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->setLayer(I)V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_39

    goto :goto_2b

    :catchall_39
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    throw v0
.end method

.method setLayerStackInTransaction(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->setLayerStack(I)V

    :cond_9
    return-void
.end method

.method setMatrixByGesture(FFFF)V
    .registers 9

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/SurfaceControlWithBackground;->setMatrix(FFFF)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception setMatrixByGesture surface in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method setMatrixInTransaction(FFFFZ)V
    .registers 11

    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_c

    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    cmpl-float v2, v2, p2

    if-eqz v2, :cond_10

    :cond_c
    const/4 v1, 0x1

    :goto_d
    if-nez v1, :cond_20

    return-void

    :cond_10
    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    cmpl-float v2, v2, p3

    if-nez v2, :cond_c

    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    cmpl-float v2, v2, p4

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_d

    :cond_1e
    const/4 v1, 0x0

    goto :goto_d

    :cond_20
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mHandleByGesture:Z

    if-eqz v2, :cond_27

    return-void

    :cond_27
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    iput p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    iput p4, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    :try_start_2f
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/wm/SurfaceControlWithBackground;->setMatrix(FFFF)V
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_34} :catch_35

    :cond_34
    :goto_34
    return-void

    :catch_35
    move-exception v0

    sget-object v2, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error setting matrix on surface surface"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " MATRIX ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p5, :cond_34

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v3, "matrix"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    goto :goto_34
.end method

.method setOpaque(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_a
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->setOpaque(Z)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_15

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    return-void

    :catchall_15
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    throw v0
.end method

.method setPositionByGesture(FF)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/SurfaceControlWithBackground;->setPosition(FF)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception setPositionByGesture surface in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method setPositionInTransaction(FFZ)V
    .registers 9

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mHandleByGesture:Z

    if-eqz v2, :cond_7

    return-void

    :cond_7
    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_13

    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    cmpl-float v2, v2, p2

    if-eqz v2, :cond_20

    :cond_13
    const/4 v1, 0x1

    :goto_14
    if-eqz v1, :cond_1f

    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    :try_start_1a
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/SurfaceControlWithBackground;->setPosition(FF)V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1f} :catch_22

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    const/4 v1, 0x0

    goto :goto_14

    :catch_22
    move-exception v0

    sget-object v2, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error positioning surface of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pos=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p3, :cond_1f

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v3, "position"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    goto :goto_1f
.end method

.method public setRecordHide(Z)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->setRecordHide(Z)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception setRecordHide in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method setSecure(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_a
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->setSecure(Z)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_15

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    return-void

    :catchall_15
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    throw v0
.end method

.method setShown(Z)V
    .registers 5

    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowType:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/wm/Session;->onWindowSurfaceVisibilityChanged(Lcom/android/server/wm/WindowSurfaceController;ZI)V

    :cond_18
    return-void
.end method

.method setSizeInTransaction(IIZ)Z
    .registers 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:F

    int-to-float v3, p1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_10

    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:F

    int-to-float v3, p2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1f

    :cond_10
    const/4 v1, 0x1

    :goto_11
    if-eqz v1, :cond_65

    int-to-float v2, p1

    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:F

    int-to-float v2, p2

    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:F

    :try_start_19
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/SurfaceControlWithBackground;->setSize(II)V
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1e} :catch_21

    return v6

    :cond_1f
    const/4 v1, 0x0

    goto :goto_11

    :catch_21
    move-exception v0

    sget-object v2, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error resizing surface of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " size=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p3, :cond_64

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v3, "size"

    invoke-virtual {v2, v3, v6}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    :cond_64
    return v5

    :cond_65
    return v5
.end method

.method setTransparentRegionHint(Landroid/graphics/Region;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setTransparentRegionHint: null mSurface after mHasSurface true"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_12
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1d

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    return-void

    :catchall_1d
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    throw v0
.end method

.method showRobustlyInTransaction()Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Lcom/android/server/wm/SurfaceControlWithBackground;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceControlWithBackground;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
