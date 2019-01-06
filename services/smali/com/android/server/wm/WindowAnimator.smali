.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field mAnimTransactionSequence:I

.field private mAnimating:Z

.field final mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mAnimationFrameCallbackScheduled:Z

.field mAppWindowAnimating:Z

.field mBulkUpdateParams:I

.field private mChoreographer:Landroid/view/Choreographer;

.field final mContext:Landroid/content/Context;

.field mCurrentTime:J

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mHasNotifyDummyVisibleApp:Z

.field mInitialized:Z

.field private mLastAnimating:Z

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field private mRemoveReplacedWindows:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

.field private final mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$Lambda$2NhxNQEdLIE-r7FU4LThto67iDM;

    const/16 v2, 0xd

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/-$Lambda$2NhxNQEdLIE-r7FU4LThto67iDM;-><init>(BLjava/lang/Object;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/android/server/wm/-$Lambda$X5AOLnbQFFWqQhT6P8dMWFD87R4;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/-$Lambda$X5AOLnbQFFWqQhT6P8dMWFD87R4;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method private animate(J)V
    .registers 24

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_ed

    if-nez v15, :cond_17

    monitor-exit v16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_17
    :try_start_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->scheduleAnimation()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_ed

    monitor-exit v16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->executeEmptyAnimationTransaction()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-wide/32 v18, 0xf4240

    div-long v18, p1, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    const/16 v15, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_53
    .catchall {:try_start_2e .. :try_end_53} :catchall_209

    :try_start_53
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v15, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/4 v11, 0x0

    :goto_62
    if-ge v11, v13, :cond_216

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v15, v7}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/DisplayContent;->stepAppWindowsAnimation(J)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    iget-object v14, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v14, :cond_1de

    invoke-virtual {v14}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v15

    if-eqz v15, :cond_1de

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowAnimator;->removeMultiWindowAnimationLocked(Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mHasNotifyDummyVisibleApp:Z

    if-nez v15, :cond_b7

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mHasNotifyDummyVisibleApp:Z

    new-instance v15, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;

    const/16 v17, 0x16

    move/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v15, v0, v1}, Lcom/android/server/wm/-$Lambda$1R9CKkanR-VO4X7zArT-ElYkIe0;-><init>(BLjava/lang/Object;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v15, v0}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_b7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v15

    if-eqz v15, :cond_f3

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    :cond_cb
    :goto_cb
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/server/wm/DisplayContent;->updateWindowsForAnimator(Lcom/android/server/wm/WindowAnimator;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v15, v5}, Lcom/android/server/wm/WindowAnimatorInjector;->updateLockDeviceWindowLocked(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/server/wm/DisplayContent;->updateWallpaperForAnimator(Lcom/android/server/wm/WindowAnimator;)V

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->prepareWindowSurfaces()V
    :try_end_e9
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_e9} :catch_115
    .catchall {:try_start_53 .. :try_end_e9} :catchall_1fe

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_62

    :catchall_ed
    move-exception v15

    monitor-exit v16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v15

    :cond_f3
    :try_start_f3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-virtual {v14}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    const/4 v15, 0x0

    iput-object v15, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v4, :cond_cb

    iget-boolean v15, v5, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v15, :cond_cb

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V
    :try_end_114
    .catch Ljava/lang/RuntimeException; {:try_start_f3 .. :try_end_114} :catch_115
    .catchall {:try_start_f3 .. :try_end_114} :catchall_1fe

    goto :goto_cb

    :catch_115
    move-exception v9

    :try_start_116
    sget-object v15, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "Unhandled exception in Window Manager"

    move-object/from16 v0, v17

    invoke-static {v15, v0, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_120
    .catchall {:try_start_116 .. :try_end_120} :catchall_1fe

    :try_start_120
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    :goto_127
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/server/wm/RootWindowContainer;->hasPendingLayoutChanges(Lcom/android/server/wm/WindowAnimator;)Z

    move-result v10

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v15, :cond_144

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v15}, Lcom/android/server/wm/RootWindowContainer;->copyAnimToLayoutParams()Z

    move-result v8

    :cond_144
    if-nez v10, :cond_148

    if-eqz v8, :cond_14f

    :cond_148
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :cond_14f
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-eqz v15, :cond_178

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mLastAnimating:Z

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_178

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/server/wm/TaskSnapshotController;->setPersisterPaused(Z)V

    const-string/jumbo v15, "animating"

    const-wide/16 v18, 0x20

    const/16 v17, 0x0

    move-wide/from16 v0, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v15, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_178
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-nez v15, :cond_1a6

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mLastAnimating:Z

    if-eqz v15, :cond_1a6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/server/wm/TaskSnapshotController;->setPersisterPaused(Z)V

    const-string/jumbo v15, "animating"

    const-wide/16 v18, 0x20

    const/16 v17, 0x0

    move-wide/from16 v0, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v15, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_1a6
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mLastAnimating:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    if-eqz v15, :cond_1c2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v15}, Lcom/android/server/wm/RootWindowContainer;->removeReplacedWindows()V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    :cond_1c2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->stopUsingSavedSurfaceLocked()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->destroyPreservedSurfaceLocked()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowSurfacePlacer;->destroyPendingSurfaces()V
    :try_end_1d9
    .catchall {:try_start_120 .. :try_end_1d9} :catchall_209

    monitor-exit v16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1de
    :try_start_1de
    iget-object v12, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowAnimation:Lcom/android/server/wm/MultiWindowAnimation;

    if-eqz v12, :cond_cb

    invoke-virtual {v12}, Lcom/android/server/wm/MultiWindowAnimation;->isAnimating()Z

    move-result v15

    if-eqz v15, :cond_cb

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Lcom/android/server/wm/MultiWindowAnimation;->stepAnimationLocked(J)Z

    move-result v15

    if-eqz v15, :cond_20f

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V
    :try_end_1fc
    .catch Ljava/lang/RuntimeException; {:try_start_1de .. :try_end_1fc} :catch_115
    .catchall {:try_start_1de .. :try_end_1fc} :catchall_1fe

    goto/16 :goto_cb

    :catchall_1fe
    move-exception v15

    :try_start_1ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    throw v15
    :try_end_209
    .catchall {:try_start_1ff .. :try_end_209} :catchall_209

    :catchall_209
    move-exception v15

    monitor-exit v16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v15

    :cond_20f
    :try_start_20f
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowAnimator;->removeMultiWindowAnimationLocked(Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;)V

    goto/16 :goto_cb

    :cond_216
    const/4 v11, 0x0

    :goto_217
    if-ge v11, v13, :cond_269

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v15, v7}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->checkAppWindowsReadyToShow()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    iget-object v14, v15, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v14, :cond_23f

    invoke-virtual {v14}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    :cond_23f
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->animateDimLayers()Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->animate(J)Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    if-eqz v4, :cond_266

    iget-boolean v15, v5, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v15, :cond_266

    invoke-virtual {v4}, Lcom/android/server/wm/AccessibilityController;->drawMagnifiedRegionBorderIfNeededLocked()V

    :cond_266
    add-int/lit8 v11, v11, 0x1

    goto :goto_217

    :cond_269
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v15, :cond_291

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wm/DragState;->stepAnimationLocked(J)Z

    move-result v17

    or-int v15, v15, v17

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_291
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-nez v15, :cond_29f

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mHasNotifyDummyVisibleApp:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->cancelAnimation()V

    :cond_29f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v15, :cond_2b0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v15}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V

    :cond_2b0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

    if-eqz v15, :cond_2d1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v15}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v15

    if-eqz v15, :cond_2da

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/server/wm/TalkbackWatermark;->setVisibility(Z)V
    :try_end_2d1
    .catch Ljava/lang/RuntimeException; {:try_start_20f .. :try_end_2d1} :catch_115
    .catchall {:try_start_20f .. :try_end_2d1} :catchall_1fe

    :cond_2d1
    :goto_2d1
    :try_start_2d1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V
    :try_end_2d8
    .catchall {:try_start_2d1 .. :try_end_2d8} :catchall_209

    goto/16 :goto_127

    :cond_2da
    :try_start_2da
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/android/server/wm/TalkbackWatermark;->setVisibility(ZZ)V
    :try_end_2eb
    .catch Ljava/lang/RuntimeException; {:try_start_2da .. :try_end_2eb} :catch_115
    .catchall {:try_start_2da .. :try_end_2eb} :catchall_1fe

    goto :goto_2d1
.end method

.method private static bulkUpdateParamsToString(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_11

    const-string/jumbo v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1b

    const-string/jumbo v1, " WALLPAPER_MAY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_25

    const-string/jumbo v1, " FORCE_HIDING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2f

    const-string/jumbo v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_39

    const-string/jumbo v1, " TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private cancelAnimation()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_e
    return-void
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .registers 5

    const/4 v2, 0x0

    if-gez p1, :cond_4

    return-object v2

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-nez v0, :cond_22

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_22

    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_22
    return-object v0
.end method


# virtual methods
.method addDisplayLocked(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-nez p1, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    :cond_8
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    :goto_29
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_86

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "DisplayContentsAnimator #"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, ":"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/android/server/wm/DisplayContent;->dumpWindowAnimators(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v5, :cond_7a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mScreenRotationAnimation:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v5, v4, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_74
    :goto_74
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_7a
    if-eqz p3, :cond_74

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "no ScreenRotationAnimation "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_74

    :cond_86
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eqz p3, :cond_ab

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mAnimTransactionSequence="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mCurrentTime="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_ab
    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v5, :cond_ca

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v5}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_ca
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_dc

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_dc
    return-void
.end method

.method getChoreographer()Landroid/view/Choreographer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method getMultiWindowAnimationLocked(I)Lcom/android/server/wm/MultiWindowAnimation;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowAnimation:Lcom/android/server/wm/MultiWindowAnimation;

    return-object v0
.end method

.method getPendingLayoutChanges(I)I
    .registers 5

    const/4 v1, 0x0

    if-gez p1, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_10

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_10
    return v1
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .registers 4

    const/4 v1, 0x0

    if-gez p1, :cond_4

    return-object v1

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    :cond_c
    return-object v1
.end method

.method isAnimating()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    return v0
.end method

.method isAnimationScheduled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    return v0
.end method

.method synthetic lambda$-com_android_server_wm_WindowAnimator_3909()V
    .registers 2

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method synthetic lambda$-com_android_server_wm_WindowAnimator_4016(J)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_13

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowAnimator;->animate(J)V

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method synthetic lambda$-com_android_server_wm_WindowAnimator_8136(Lcom/android/server/wm/WindowState;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_46

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v0, :cond_46

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->mIsDummyVisible:Z

    if-eqz v0, :cond_1f

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_1f

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v1, "hide by gesture"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    :cond_1f
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->mIsDummyAnimating:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->isGestureRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/MiuiGestureController;->setKeepWallpaperShowing(Z)V

    :cond_3a
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowAnimator;->mIsDummyAnimating:Z

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowAnimator;->mNeedPendingShowSurface:Z

    :cond_46
    return-void
.end method

.method orAnimating(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    return-void
.end method

.method removeDisplayLocked(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-eqz v0, :cond_19

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    :cond_16
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowAnimator;->removeMultiWindowAnimationLocked(Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;)V

    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method removeMultiWindowAnimationLocked(Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    iget-object v0, p1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowAnimation:Lcom/android/server/wm/MultiWindowAnimation;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowAnimation:Lcom/android/server/wm/MultiWindowAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowAnimation;->stopAnimation()V

    iput-object v1, p1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowAnimation:Lcom/android/server/wm/MultiWindowAnimation;

    :cond_e
    return-void
.end method

.method requestRemovalOfReplacedWindows(Lcom/android/server/wm/WindowState;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    return-void
.end method

.method scheduleAnimation()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_e
    return-void
.end method

.method setAnimating(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    return-void
.end method

.method setMultiWindowAnimationLocked(ILcom/android/server/wm/MultiWindowAnimation;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowAnimation:Lcom/android/server/wm/MultiWindowAnimation;

    return-void
.end method

.method setPendingLayoutChanges(II)V
    .registers 5

    if-gez p1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_12

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_12
    return-void
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    if-eqz v0, :cond_8

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    :cond_8
    return-void
.end method
