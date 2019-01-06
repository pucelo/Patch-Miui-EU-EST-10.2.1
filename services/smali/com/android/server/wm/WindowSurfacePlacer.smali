.class Lcom/android/server/wm/WindowSurfacePlacer;
.super Ljava/lang/Object;
.source "WindowSurfacePlacer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;
    }
.end annotation


# static fields
.field static final SET_FORCE_HIDING_CHANGED:I = 0x4

.field static final SET_ORIENTATION_CHANGE_COMPLETE:I = 0x8

.field static final SET_TURN_ON_SCREEN:I = 0x10

.field static final SET_UPDATE_ROTATION:I = 0x1

.field static final SET_WALLPAPER_ACTION_PENDING:I = 0x20

.field static final SET_WALLPAPER_MAY_CHANGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mCurMiuiAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mDeferDepth:I

.field private mInLayout:Z

.field private mLayoutRepeatCount:I

.field private final mPendingDestroyingSurfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerformSurfacePlacement:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempTransitionReasons:Landroid/util/SparseIntArray;

.field private final mTmpContentRect:Landroid/graphics/Rect;

.field private final mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

.field private final mTmpStartRect:Landroid/graphics/Rect;

.field private mTraversalScheduled:Z

.field private final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpStartRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpContentRect:Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mCurMiuiAnimatorList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;-><init>(Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    new-instance v0, Lcom/android/server/wm/-$Lambda$2NhxNQEdLIE-r7FU4LThto67iDM;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/-$Lambda$2NhxNQEdLIE-r7FU4LThto67iDM;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    return-void
.end method

.method private canBeWallpaperTarget(Landroid/util/ArraySet;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_7
    if-ltz v0, :cond_1a

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    return v1

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_1a
    return v2
.end method

.method private createThumbnailAppAnimator(ILcom/android/server/wm/AppWindowToken;II)V
    .registers 29

    if-nez p2, :cond_d

    const/16 v19, 0x0

    :goto_4
    if-eqz v19, :cond_c

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v3, :cond_14

    :cond_c
    return-void

    :cond_d
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v19, v0

    goto :goto_4

    :cond_14
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v0, v3, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;

    move-result-object v21

    if-nez v21, :cond_2b

    return-void

    :cond_2b
    new-instance v12, Landroid/graphics/Rect;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v3

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v12, v7, v8, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    :try_start_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v23

    new-instance v2, Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-string/jumbo v4, "thumbnail anim"

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/server/wm/AppWindowToken;->windowType:I

    if-eqz v23, :cond_11b

    move-object/from16 v0, v23

    iget v10, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    :goto_6b
    const/4 v7, -0x3

    const/4 v8, 0x4

    invoke-direct/range {v2 .. v10}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIII)V

    invoke-virtual {v13}, Landroid/view/Display;->getLayerStack()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    new-instance v17, Landroid/view/Surface;

    invoke-direct/range {v17 .. v17}, Landroid/view/Surface;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    invoke-virtual/range {v17 .. v17}, Landroid/view/Surface;->release()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->needCreateMiuiThumbnail()Z

    move-result v3

    if-eqz v3, :cond_132

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v22

    if-eqz v22, :cond_121

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    :goto_a1
    new-instance v3, Lcom/android/server/wm/AppWindowAnimatorHelper;

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    move-object v5, v12

    move-object v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/AppWindowAnimatorHelper;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;ILcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppWindowAnimatorHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mCurMiuiAnimatorList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v0, v16

    iget v6, v0, Landroid/view/DisplayInfo;->appWidth:I

    move-object/from16 v0, v16

    iget v7, v0, Landroid/view/DisplayInfo;->appHeight:I

    move/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v3, v6, v7, v0, v1}, Lcom/android/server/wm/AppTransition;->createThumbnailScaleAnimationLocked(IIILandroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->getAnimationScale(I)F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    float-to-long v6, v6

    const/16 v8, 0x65

    invoke-virtual {v3, v8, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    :goto_ed
    const-wide/16 v6, 0x2710

    invoke-virtual {v11, v6, v7}, Landroid/view/animation/Animation;->restrictDuration(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v3

    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    move/from16 v0, p3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move-object/from16 v0, v19

    iput-object v11, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpStartRect:Landroid/graphics/Rect;

    move/from16 v0, v20

    invoke-virtual {v3, v0, v6}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    :goto_11a
    return-void

    :cond_11b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    goto/16 :goto_6b

    :cond_121
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    move-object/from16 v0, v16

    iget v6, v0, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_a1

    :cond_132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isNextThumbnailTransitionAspectScaled()Z

    move-result v3

    if-eqz v3, :cond_1c4

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v22

    if-eqz v22, :cond_1b2

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    :goto_148
    if-eqz v22, :cond_1c2

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    :goto_14e
    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget v8, v14, Landroid/content/res/Configuration;->uiMode:I

    iget v9, v14, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v6, v21

    move/from16 v7, v20

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/AppTransition;->createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/GraphicBuffer;III)Landroid/view/animation/Animation;

    move-result-object v11

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isNextThumbnailTransitionScaleUp()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v19

    iput-boolean v3, v0, Lcom/android/server/wm/AppWindowAnimator;->deferThumbnailDestruction:Z
    :try_end_17c
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3a .. :try_end_17c} :catch_17e

    goto/16 :goto_ed

    :catch_17e
    move-exception v18

    sget-object v3, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t allocate thumbnail/Canvas surface w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " h="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-static {v3, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    goto/16 :goto_11a

    :cond_1b2
    :try_start_1b2
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    move-object/from16 v0, v16

    iget v6, v0, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_148

    :cond_1c2
    const/4 v5, 0x0

    goto :goto_14e

    :cond_1c4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v0, v16

    iget v6, v0, Landroid/view/DisplayInfo;->appWidth:I

    move-object/from16 v0, v16

    iget v7, v0, Landroid/view/DisplayInfo;->appHeight:I

    move/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v3, v6, v7, v0, v1}, Lcom/android/server/wm/AppTransition;->createThumbnailScaleAnimationLocked(IIILandroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;
    :try_end_1d9
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1b2 .. :try_end_1d9} :catch_17e

    move-result-object v11

    goto/16 :goto_ed
.end method

.method private handleClosingApps(ILandroid/view/WindowManager$LayoutParams;ZLcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V
    .registers 15

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mCurMiuiAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_e

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mCurMiuiAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_17
    if-ge v8, v7, :cond_91

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->markSavedSurfaceExiting()V

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    move-object v1, p2

    move v3, p1

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppWindowToken;->setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_56

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_56

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    :cond_56
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v3, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    if-eqz p2, :cond_75

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayer()I

    move-result v9

    iget-object v1, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_71

    iget v1, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    if-le v9, v1, :cond_75

    :cond_71
    iput-object v0, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    iput v9, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    :cond_75
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailDown()Z

    move-result v1

    if-nez v1, :cond_89

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->needCreateMiuiThumbnail()Z

    move-result v1

    if-eqz v1, :cond_8e

    :cond_89
    iget v1, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->createThumbnailAppAnimator(ILcom/android/server/wm/AppWindowToken;II)V

    :cond_8e
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    :cond_91
    return-void
.end method

.method private handleDummyVisibleApps(ILandroid/view/WindowManager$LayoutParams;Z)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDummyVisibleApp:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mDummyVisibleAppEnter:Z

    move-object v2, p2

    move v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZZ)Z

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimateWallpaperWithTarget:Z

    return-void
.end method

.method private handleNonAppWindowsInTransition(II)V
    .registers 10

    const/16 v6, 0x15

    const/16 v5, 0x14

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v5, :cond_2a

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2a

    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_3f

    move v1, v2

    :goto_19
    invoke-interface {v4, v1}, Landroid/view/WindowManagerPolicy;->createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WallpaperController;->startWallpaperAnimation(Landroid/view/animation/Animation;)V

    :cond_2a
    if-eq p1, v5, :cond_2e

    if-ne p1, v6, :cond_3e

    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-ne p1, v6, :cond_41

    move v1, v2

    :goto_37
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_43

    :goto_3b
    invoke-virtual {v4, v1, v2}, Lcom/android/server/wm/DisplayContent;->startKeyguardExitOnNonAppWindows(ZZ)V

    :cond_3e
    return-void

    :cond_3f
    move v1, v3

    goto :goto_19

    :cond_41
    move v1, v3

    goto :goto_37

    :cond_43
    move v2, v3

    goto :goto_3b
.end method

.method private handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;ZI)Lcom/android/server/wm/AppWindowToken;
    .registers 18

    const/4 v11, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v8, :cond_8b

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v7, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    if-nez v2, :cond_22

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    :cond_22
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v2, p2

    move v4, p1

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/AppWindowToken;->setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    move-result v2

    if-nez v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v3, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->cancelMiuiThumbnailAnimationLocked()V

    :cond_3a
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->setAllAppWinAnimators()V

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_48
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_84

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v3, v2, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, v2, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    const/4 v12, 0x0

    if-eqz p2, :cond_72

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayer()I

    move-result v10

    if-eqz v11, :cond_70

    if-lez v10, :cond_72

    :cond_70
    move-object v11, v1

    move v12, v10

    :cond_72
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailUp()Z

    move-result v2

    if-eqz v2, :cond_81

    move/from16 v0, p4

    invoke-direct {p0, p1, v1, v12, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->createThumbnailAppAnimator(ILcom/android/server/wm/AppWindowToken;II)V

    :cond_81
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :catchall_84
    move-exception v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    throw v2

    :cond_8b
    return-object v11
.end method

.method private maybeUpdateTransitToWallpaper(IZZ)I
    .registers 13

    const/4 v8, 0x0

    if-nez p1, :cond_4

    return v8

    :cond_4
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v7}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v7}, Lcom/android/server/wm/WallpaperController;->isWallpaperTargetAnimating()Z

    move-result v7

    if-eqz v7, :cond_37

    const/4 v3, 0x0

    :goto_13
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v7, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v7, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowSurfacePlacer;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v5

    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v8, v7, Lcom/android/server/wm/WindowManagerService;->mAnimateWallpaperWithTarget:Z

    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mDummyVisibleApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_39

    const/4 v1, 0x1

    :goto_2a
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v7, Lcom/android/server/wm/WindowManagerService;->mDummyVisibleAppEnter:Z

    if-eqz v5, :cond_3b

    const/16 v7, 0x14

    if-ne p1, v7, :cond_3b

    const/16 p1, 0x15

    :cond_36
    :goto_36
    return p1

    :cond_37
    move-object v3, v6

    goto :goto_13

    :cond_39
    const/4 v1, 0x0

    goto :goto_2a

    :cond_3b
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v7

    if-nez v7, :cond_36

    if-eqz p3, :cond_4f

    if-eqz p2, :cond_4f

    packed-switch p1, :pswitch_data_a2

    goto :goto_36

    :pswitch_49
    const/16 p1, 0xe

    goto :goto_36

    :pswitch_4c
    const/16 p1, 0xf

    goto :goto_36

    :cond_4f
    if-eqz v3, :cond_72

    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_72

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_72

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    const/16 p1, 0xc

    goto :goto_36

    :cond_72
    if-eqz v6, :cond_85

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_85

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_85

    const/16 p1, 0xd

    goto :goto_36

    :cond_85
    if-eqz v6, :cond_92

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_92

    if-eqz p2, :cond_92

    const/16 p1, 0xe

    goto :goto_36

    :cond_92
    if-eqz v1, :cond_9c

    if-eqz v2, :cond_99

    const/16 p1, 0xd

    goto :goto_36

    :cond_99
    const/16 p1, 0xc

    goto :goto_36

    :cond_9c
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/wm/WindowManagerService;->mAnimateWallpaperWithTarget:Z

    goto :goto_36

    :pswitch_data_a2
    .packed-switch 0x6
        :pswitch_49
        :pswitch_4c
        :pswitch_49
        :pswitch_4c
        :pswitch_49
        :pswitch_4c
    .end packed-switch
.end method

.method private performSurfacePlacementLoop()V
    .registers 13

    const-wide/16 v10, 0x20

    const/4 v8, 0x0

    iget-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    if-eqz v5, :cond_26

    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "performLayoutAndPlaceSurfacesLocked called while in layout. Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v5, :cond_2d

    return-void

    :cond_2d
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v5, :cond_34

    return-void

    :cond_34
    const-string/jumbo v5, "wmLayout"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8e

    const/4 v2, 0x1

    :goto_49
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7a

    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Force removing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    goto :goto_49

    :cond_7a
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    monitor-enter v3

    const-wide/16 v6, 0xfa

    :try_start_8a
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_8d
    .catch Ljava/lang/InterruptedException; {:try_start_8a .. :try_end_8d} :catch_d6
    .catchall {:try_start_8a .. :try_end_8d} :catchall_d8

    :goto_8d
    monitor-exit v3

    :cond_8e
    :try_start_8e
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement(Z)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v5

    if-eqz v5, :cond_f3

    iget v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v6, 0x6

    if-ge v5, v6, :cond_db

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :goto_ae
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v5, :cond_d2

    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_d2

    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_d2
    .catch Ljava/lang/RuntimeException; {:try_start_8e .. :try_end_d2} :catch_e7

    :cond_d2
    :goto_d2
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catch_d6
    move-exception v0

    goto :goto_8d

    :catchall_d8
    move-exception v5

    monitor-exit v3

    throw v5

    :cond_db
    :try_start_db
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Performed 6 layouts in a row. Skipping"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I
    :try_end_e6
    .catch Ljava/lang/RuntimeException; {:try_start_db .. :try_end_e6} :catch_e7

    goto :goto_ae

    :catch_e7
    move-exception v1

    iput-boolean v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Unhandled exception while laying out windows"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d2

    :cond_f3
    const/4 v5, 0x0

    :try_start_f4
    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I
    :try_end_f6
    .catch Ljava/lang/RuntimeException; {:try_start_f4 .. :try_end_f6} :catch_e7

    goto :goto_ae
.end method

.method private processApplicationsAnimatingInPlace(I)V
    .registers 8

    const/16 v3, 0x11

    if-ne p1, v3, :cond_3d

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/wm/WindowManagerService;->updateTokenInPlaceLocked(Lcom/android/server/wm/AppWindowToken;I)V

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->setAllAppWinAnimators()V

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v4, v3, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v5

    or-int/2addr v4, v5

    iput-boolean v4, v3, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    :cond_3d
    return-void
.end method

.method private transitionGoodToGo(ILandroid/util/SparseIntArray;)Z
    .registers 14

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v3

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v8}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v8

    if-nez v8, :cond_a3

    if-eqz v3, :cond_28

    invoke-virtual {v3}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v8

    if-eqz v8, :cond_28

    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->rotationNeedsUpdateLocked()Z

    move-result v8

    if-eqz v8, :cond_28

    return v9

    :cond_28
    const/4 v2, 0x0

    :goto_29
    if-ge v2, p1, :cond_79

    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v8, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v7, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->restoreSavedSurfaceForInterestingWindows()V

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v8, :cond_53

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v8

    xor-int/lit8 v0, v8, 0x1

    :goto_44
    if-nez v0, :cond_55

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_55

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_55

    return v9

    :cond_53
    const/4 v0, 0x0

    goto :goto_44

    :cond_55
    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    if-eqz v4, :cond_68

    iget v5, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    :goto_5d
    if-eqz v0, :cond_6c

    if-eqz v1, :cond_6a

    const/4 v8, 0x2

    :goto_62
    invoke-virtual {p2, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_68
    const/4 v5, -0x1

    goto :goto_5d

    :cond_6a
    move v8, v9

    goto :goto_62

    :cond_6c
    iget-object v8, v7, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    instance-of v8, v8, Lcom/android/server/wm/SplashScreenStartingData;

    if-eqz v8, :cond_77

    move v8, v10

    :goto_73
    invoke-virtual {p2, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_65

    :cond_77
    const/4 v8, 0x4

    goto :goto_73

    :cond_79
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v8}, Lcom/android/server/wm/AppTransition;->isFetchingAppTransitionsSpecs()Z

    move-result v8

    if-eqz v8, :cond_84

    return v9

    :cond_84
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v8}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v8

    if-nez v8, :cond_8f

    return v9

    :cond_8f
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v8}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v8

    if-eqz v8, :cond_a0

    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v8}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result v6

    :goto_9d
    if-eqz v6, :cond_a2

    return v10

    :cond_a0
    const/4 v6, 0x1

    goto :goto_9d

    :cond_a2
    return v9

    :cond_a3
    return v10
.end method


# virtual methods
.method cancelMiuiThumbnailAnimationLocked()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mCurMiuiAnimatorList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppWindowAnimatorHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    goto :goto_6

    :cond_1a
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mCurMiuiAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method continueLayout()V
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-gtz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_d
    return-void
.end method

.method debugLayoutRepeats(Ljava/lang/String;I)V
    .registers 6

    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2d

    sget-object v0, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layouts looping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mPendingLayoutChanges = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-void
.end method

.method deferLayout()V
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    return-void
.end method

.method destroyAfterTransaction(Landroid/view/SurfaceControl;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method destroyPendingSurfaces()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mTraversalScheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mHoldScreenWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mObscuringWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method handleAppTransitionReadyLocked()I
    .registers 30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/android/server/wm/WindowSurfacePlacer;->transitionGoodToGo(ILandroid/util/SparseIntArray;)Z

    move-result v4

    if-nez v4, :cond_18

    const/4 v4, 0x0

    return v4

    :cond_18
    const-string/jumbo v4, "AppTransitionReady"

    const-wide/16 v8, 0x20

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    if-eqz v4, :cond_3b

    invoke-static {v5}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3b

    const/4 v5, -0x1

    :cond_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0xd

    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/16 v18, 0x0

    const/16 v25, 0x0

    const/16 v19, 0x0

    :goto_6f
    move/from16 v0, v19

    if-ge v0, v11, :cond_87

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/AppWindowToken;->clearAnimatingFlags()V

    add-int/lit8 v19, v19, 0x1

    goto :goto_6f

    :cond_87
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v8}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindowsForAppTransitionIfNeeded(Lcom/android/server/wm/DisplayContent;Landroid/util/ArraySet;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v26

    const/16 v21, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int v11, v14, v4

    const/16 v19, 0x0

    :goto_b9
    move/from16 v0, v19

    if-ge v0, v11, :cond_127

    move/from16 v0, v19

    if-ge v0, v14, :cond_f7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/wm/AppWindowToken;

    if-eqz v26, :cond_d8

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v4

    if-eqz v4, :cond_d8

    const/4 v13, 0x1

    :cond_d8
    :goto_d8
    move-object/from16 v0, v28

    iget-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    or-int v25, v25, v4

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v4

    if-eqz v4, :cond_110

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v27

    if-eqz v27, :cond_f4

    move-object/from16 v0, v27

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v27

    iget v12, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    const/16 v18, 0x1

    :cond_f4
    :goto_f4
    add-int/lit8 v19, v19, 0x1

    goto :goto_b9

    :cond_f7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    sub-int v8, v19, v14

    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/wm/AppWindowToken;

    if-eqz v26, :cond_d8

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v4

    if-eqz v4, :cond_d8

    const/16 v21, 0x1

    goto :goto_d8

    :cond_110
    if-nez v18, :cond_f4

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v27

    if-eqz v27, :cond_f4

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v4, v12, :cond_f4

    move-object/from16 v0, v27

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v27

    iget v12, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_f4

    :cond_127
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v5, v1, v13}, Lcom/android/server/wm/WindowSurfacePlacer;->maybeUpdateTransitToWallpaper(IZZ)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->allowAppAnimationsLw()Z

    move-result v4

    if-nez v4, :cond_13c

    const/4 v10, 0x0

    :cond_13c
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->processApplicationsAnimatingInPlace(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    const/4 v8, 0x0

    iput-object v8, v4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v8}, Lcom/android/server/wm/AppTransition;->updateAllowCustomAnimationIfNeeded(Landroid/util/ArraySet;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v5, v10, v1, v4}, Lcom/android/server/wm/WindowSurfacePlacer;->handleClosingApps(ILandroid/view/WindowManager$LayoutParams;ZLcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    iget-object v0, v4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    iget v0, v4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v5, v10, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;ZI)Lcom/android/server/wm/AppWindowToken;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v5, v10, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->handleDummyVisibleApps(ILandroid/view/WindowManager$LayoutParams;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    if-nez v24, :cond_24b

    const/4 v6, 0x0

    :goto_193
    if-nez v22, :cond_251

    const/4 v7, 0x0

    :goto_196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/AppTransition;->goodToGo(ILcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/AppWindowAnimator;Landroid/util/ArraySet;Landroid/util/ArraySet;)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->handleNonAppWindowsInTransition(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskSnapshotController;->onTransitionStarting()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x0

    iput-object v8, v4, Lcom/android/server/wm/WindowManagerService;->mDummyVisibleApp:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v4}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v4}, Lcom/android/server/wm/MiuiGestureController;->disabledAppTransitionSkipped()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowManagerService;->setLoadBackHomeAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v4, v9, v8}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    const-wide/16 v8, 0x20

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    or-int/lit8 v4, v20, 0x1

    or-int/lit8 v4, v4, 0x2

    return v4

    :cond_24b
    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto/16 :goto_193

    :cond_251
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto/16 :goto_196
.end method

.method isInLayout()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    return v0
.end method

.method isLayoutDeferred()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method synthetic lambda$-com_android_server_wm_WindowSurfacePlacer_5559()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method final performSurfacePlacement()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    return-void
.end method

.method final performSurfacePlacement(Z)V
    .registers 6

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v1, :cond_a

    xor-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x6

    :cond_b
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementLoop()V

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, -0x1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v1, :cond_21

    if-gtz v0, :cond_b

    :cond_21
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    return-void
.end method

.method requestTraversal()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method