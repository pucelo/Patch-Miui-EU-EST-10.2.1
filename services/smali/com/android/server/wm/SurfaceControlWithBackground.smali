.class Lcom/android/server/wm/SurfaceControlWithBackground;
.super Landroid/view/SurfaceControl;
.source "SurfaceControlWithBackground.java"


# instance fields
.field private mBackgroundControl:Landroid/view/SurfaceControl;

.field private mHiddenForCrop:Z

.field private mHiddenNotchForCrop:Z

.field private mLastDsDx:F

.field private mLastDsDy:F

.field private mLastHeight:F

.field private mLastWidth:F

.field private mLastX:F

.field private mLastY:F

.field private mNavBarHeight:I

.field private mNotchBackgroundControl:Landroid/view/SurfaceControl;

.field private mNotchHeight:I

.field private mTmpContainerRect:Landroid/graphics/Rect;

.field private mTmpNotchContainerRect:Landroid/graphics/Rect;

.field private mVisible:Z

.field private mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIIILcom/android/server/wm/WindowSurfaceController;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    invoke-direct/range {p0 .. p8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIII)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDx:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDy:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mHiddenForCrop:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mHiddenNotchForCrop:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpNotchContainerRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNavBarHeight:I

    const/4 v1, 0x1

    move/from16 v0, p7

    if-eq v0, v1, :cond_30

    const/4 v1, 0x3

    move/from16 v0, p7

    if-eq v0, v1, :cond_30

    :cond_2f
    return-void

    :cond_30
    move-object/from16 v0, p9

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isLetterboxedAppWindow()Z

    move-result v1

    if-nez v1, :cond_4a

    move-object/from16 v0, p9

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2f

    :cond_4a
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-float v1, p3

    iput v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastWidth:F

    int-to-float v1, p4

    iput v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastHeight:F

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowSurfaceController;->getContainerRect(Landroid/graphics/Rect;)V

    move-object/from16 v0, p9

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isLetterboxedAppWindow()Z

    move-result v1

    if-eqz v1, :cond_94

    new-instance v1, Landroid/view/SurfaceControl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Background for - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v2, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/high16 v2, 0x20000

    or-int v7, p6, v2

    const/4 v6, -0x1

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    :cond_94
    sget-boolean v1, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v1, :cond_ad

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105018e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    :cond_ad
    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_ce

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNavBarHeight:I

    :cond_ce
    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p9

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result v1

    if-eqz v1, :cond_137

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_10a

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNavBarHeight:I

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_137

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNavBarHeight:I

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_137

    :cond_10a
    new-instance v1, Landroid/view/SurfaceControl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Background notch for - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v2, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/high16 v2, 0x20000

    or-int v7, p6, v2

    const/4 v6, -0x1

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    :cond_137
    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_13e

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    :cond_13e
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/SurfaceControlWithBackground;)V
    .registers 5

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    iput v2, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDx:F

    iput v2, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDy:F

    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mHiddenForCrop:Z

    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mHiddenNotchForCrop:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpNotchContainerRect:Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    iput v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNavBarHeight:I

    iget-object v0, p1, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    iget-boolean v0, p1, Lcom/android/server/wm/SurfaceControlWithBackground;->mVisible:Z

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mVisible:Z

    iget-object v0, p1, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iput-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v0, p1, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    iget v0, p1, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    iput v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    iget v0, p1, Lcom/android/server/wm/SurfaceControlWithBackground;->mNavBarHeight:I

    iput v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNavBarHeight:I

    return-void
.end method

.method private calculateBgCrop(Landroid/graphics/Rect;)V
    .registers 22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v15, v15, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v15, v15, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v15, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    iget v15, v7, Landroid/graphics/Rect;->top:I

    if-nez v15, :cond_24

    const/4 v8, 0x0

    :goto_f
    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, v8, v15

    if-lez v15, :cond_35

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->setEmpty()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpNotchContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_24
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v8, v15, v16

    goto :goto_f

    :cond_35
    const v15, 0x3ccccccd    # 0.025f

    cmpg-float v15, v8, v15

    if-gez v15, :cond_3d

    const/4 v8, 0x0

    :cond_3d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/wm/WindowSurfaceController;->getContainerRect(Landroid/graphics/Rect;)V

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v15, v15, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v15, v15, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v13, v15, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v15, v15, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v15, v15, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getParentFrameLw()Landroid/graphics/Rect;

    move-result-object v14

    iget v15, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDx:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v11, v15

    iget v15, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDy:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v12, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v15, v15, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v15, v15, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->getNavBarPosition()I

    move-result v6

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v15, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDx:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v9, v15

    iget v15, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDy:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v10, v15

    packed-switch v6, :pswitch_data_2b8

    :goto_db
    :pswitch_db
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    add-int v16, v11, v5

    add-int v17, v12, v2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v11, v12, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpNotchContainerRect:Landroid/graphics/Rect;

    add-int v16, v9, v4

    add-int v17, v10, v3

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v9, v10, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :pswitch_fa
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastWidth:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v8

    mul-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v5, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v15, v5

    add-int/2addr v11, v15

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v15

    iget v15, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    if-lt v15, v0, :cond_16b

    iget v15, v14, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    if-le v15, v0, :cond_17a

    :cond_16b
    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_16d
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->right:I

    sub-int v9, v15, v4

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v15

    goto/16 :goto_db

    :cond_17a
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    int-to-float v15, v15

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v8

    mul-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v4, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    goto :goto_16d

    :pswitch_194
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastWidth:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v8

    mul-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v5, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v15

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v15

    iget v15, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v15, v0, :cond_1e8

    iget v15, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_1f5

    :cond_1e8
    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_1ea
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v15

    goto/16 :goto_db

    :cond_1f5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    int-to-float v15, v15

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v8

    mul-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v4, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    goto :goto_1ea

    :pswitch_20f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v15, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_26f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastHeight:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v8

    mul-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v2, v0

    :goto_240
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v15

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v15

    iget v15, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v15, v0, :cond_262

    iget v15, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_29e

    :cond_262
    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_264
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v15

    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_db

    :cond_26f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastHeight:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v8

    mul-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v2, v0

    goto :goto_240

    :cond_29e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchHeight:I

    int-to-float v15, v15

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v8

    mul-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v3, v0

    goto :goto_264

    :pswitch_data_2b8
    .packed-switch 0x1
        :pswitch_fa
        :pswitch_194
        :pswitch_db
        :pswitch_20f
    .end packed-switch
.end method

.method private updateBackgroundVisibility()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mVisible:Z

    if-eqz v1, :cond_4c

    if-eqz v0, :cond_4c

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_38

    iget-boolean v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mHiddenForCrop:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_42

    iget-boolean v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mHiddenNotchForCrop:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    :cond_37
    :goto_37
    return-void

    :cond_38
    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    goto :goto_28

    :cond_42
    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    goto :goto_37

    :cond_4c
    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    :cond_55
    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    goto :goto_37
.end method

.method private updateBgPosition()V
    .registers 7

    iget-object v3, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v4, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowSurfaceController;->getContainerRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v3, v3, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDx:F

    mul-float v0, v3, v4

    iget-object v3, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDy:F

    mul-float v1, v3, v4

    iget-object v3, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastX:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastY:F

    add-float/2addr v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    return-void
.end method

.method private updateNotchBgPosition()V
    .registers 7

    iget-object v3, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v4, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowSurfaceController;->getContainerRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v3, v3, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDx:F

    mul-float v0, v3, v4

    iget-object v3, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDy:F

    mul-float v1, v3, v4

    iget-object v3, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastX:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastY:F

    add-float/2addr v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    return-void
.end method


# virtual methods
.method public deferTransactionUntil(Landroid/os/IBinder;J)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    :cond_1a
    return-void
.end method

.method public deferTransactionUntil(Landroid/view/Surface;J)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/Surface;J)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/Surface;J)V

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/Surface;J)V

    :cond_1a
    return-void
.end method

.method public destroy()V
    .registers 2

    invoke-super {p0}, Landroid/view/SurfaceControl;->destroy()V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    :cond_1a
    return-void
.end method

.method public hide()V
    .registers 2

    invoke-super {p0}, Landroid/view/SurfaceControl;->hide()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mVisible:Z

    invoke-direct {p0}, Lcom/android/server/wm/SurfaceControlWithBackground;->updateBackgroundVisibility()V

    return-void
.end method

.method public release()V
    .registers 2

    invoke-super {p0}, Landroid/view/SurfaceControl;->release()V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    :cond_1a
    return-void
.end method

.method public setAlpha(F)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    :cond_1a
    return-void
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->getContainerRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    :cond_25
    return-void
.end method

.method public setLayer(I)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    :cond_1e
    return-void
.end method

.method public setLayerStack(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    :cond_1a
    return-void
.end method

.method public setMatrix(FFFF)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iput p1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDx:F

    iput p4, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDy:F

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    invoke-direct {p0}, Lcom/android/server/wm/SurfaceControlWithBackground;->updateBgPosition()V

    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    invoke-direct {p0}, Lcom/android/server/wm/SurfaceControlWithBackground;->updateNotchBgPosition()V

    :cond_24
    return-void
.end method

.method public setOpaque(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V

    invoke-direct {p0}, Lcom/android/server/wm/SurfaceControlWithBackground;->updateBackgroundVisibility()V

    return-void
.end method

.method public setPosition(FF)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iput p1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastX:F

    iput p2, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastY:F

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/android/server/wm/SurfaceControlWithBackground;->updateBgPosition()V

    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/server/wm/SurfaceControlWithBackground;->updateNotchBgPosition()V

    :cond_1a
    return-void
.end method

.method public setSecure(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V

    return-void
.end method

.method public setSize(II)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_8

    return-void

    :cond_8
    int-to-float v0, p1

    iput v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastWidth:F

    int-to-float v0, p2

    iput v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastHeight:F

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->getContainerRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    :cond_3f
    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    :cond_1a
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1e

    invoke-direct {p0, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->calculateBgCrop(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mHiddenForCrop:Z

    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_34

    invoke-direct {p0, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->calculateBgCrop(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mNotchBackgroundControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpNotchContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpNotchContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mHiddenNotchForCrop:Z

    :cond_34
    invoke-direct {p0}, Lcom/android/server/wm/SurfaceControlWithBackground;->updateBackgroundVisibility()V

    return-void
.end method

.method public show()V
    .registers 2

    invoke-super {p0}, Landroid/view/SurfaceControl;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mVisible:Z

    invoke-direct {p0}, Lcom/android/server/wm/SurfaceControlWithBackground;->updateBackgroundVisibility()V

    return-void
.end method
