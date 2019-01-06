.class public Lcom/android/server/wm/TaskStack;
.super Lcom/android/server/wm/WindowContainer;
.source "TaskStack.java"

# interfaces
.implements Lcom/android/server/wm/DimLayer$DimLayerUser;
.implements Lcom/android/server/wm/BoundsAnimationTarget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer",
        "<",
        "Lcom/android/server/wm/Task;",
        ">;",
        "Lcom/android/server/wm/DimLayer$DimLayerUser;",
        "Lcom/android/server/wm/BoundsAnimationTarget;"
    }
.end annotation


# static fields
.field private static final ADJUSTED_STACK_FRACTION_MIN:F = 0.3f

.field private static final IME_ADJUST_DIM_AMOUNT:F = 0.25f


# instance fields
.field private mAdjustDividerAmount:F

.field private mAdjustImeAmount:F

.field private final mAdjustedBounds:Landroid/graphics/Rect;

.field private mAdjustedForIme:Z

.field private mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field private mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

.field private mBounds:Landroid/graphics/Rect;

.field private final mBoundsAfterRotation:Landroid/graphics/Rect;

.field private mBoundsAnimating:Z

.field private mBoundsAnimatingRequested:Z

.field private mBoundsAnimatingToFullscreen:Z

.field private mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

.field private mBoundsAnimationTarget:Landroid/graphics/Rect;

.field private mCancelCurrentBoundsAnimation:Z

.field mDeferRemoval:Z

.field private mDensity:I

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDockedStackMinimizeThickness:I

.field final mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field private mFillsParent:Z

.field private final mFullyAdjustedImeBounds:Landroid/graphics/Rect;

.field private mImeGoingAway:Z

.field private mImeWin:Lcom/android/server/wm/WindowState;

.field private mMinimizeAmount:F

.field mPreAnimationBounds:Landroid/graphics/Rect;

.field private mRotation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field final mStackId:I

.field private final mTmpAdjustedBounds:Landroid/graphics/Rect;

.field final mTmpAppTokens:Lcom/android/server/wm/AppTokenList;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field private mTmpRect3:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowContainer;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFillsParent:Z

    new-instance v0, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    new-instance v0, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpAppTokens:Lcom/android/server/wm/AppTokenList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingToFullscreen:Z

    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iput p2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    const/16 v0, 0x791c

    invoke-static {v0, p2}, Landroid/util/EventLog;->writeEvent(II)I

    return-void
.end method

.method private adjustForIME(Lcom/android/server/wm/WindowState;)Z
    .registers 21

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v7

    const/4 v14, 0x2

    if-eq v7, v14, :cond_a

    const/4 v14, 0x4

    if-ne v7, v14, :cond_13

    :cond_a
    const/4 v8, 0x1

    :goto_b
    if-eqz p1, :cond_11

    xor-int/lit8 v14, v8, 0x1

    if-eqz v14, :cond_15

    :cond_11
    const/4 v14, 0x0

    return v14

    :cond_13
    const/4 v8, 0x0

    goto :goto_b

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    invoke-virtual {v14, v3}, Lcom/android/server/wm/DisplayContent;->getContentRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->top:I

    iget v15, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v14

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    if-le v14, v9, :cond_40

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    :cond_40
    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v14}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v14}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidthInactive()I

    move-result v6

    const/4 v14, 0x2

    if-ne v7, v14, :cond_bd

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/android/server/wm/TaskStack;->getMinTopStackBottom(Landroid/graphics/Rect;I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v13

    add-int/2addr v14, v4

    sub-int/2addr v14, v6

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    int-to-float v0, v1

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v16, v17, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_bb
    const/4 v14, 0x1

    return v14

    :cond_bd
    sub-int v5, v6, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v4

    add-int v12, v14, v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/android/server/wm/TaskStack;->getMinTopStackBottom(Landroid/graphics/Rect;I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v13

    add-int v15, v10, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    move/from16 v16, v0

    sub-int v17, v11, v12

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    iput v15, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    iput v11, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    add-int/2addr v15, v11

    iput v15, v14, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_bb
.end method

.method private adjustForMinimizedDockedStack(F)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_16

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_16

    return v5

    :cond_16
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3c

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    int-to-float v4, v1

    mul-float/2addr v4, p1

    sub-float v5, v6, p1

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    :cond_3b
    :goto_3b
    return v7

    :cond_3c
    if-ne v0, v7, :cond_67

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    sub-float v5, v6, p1

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->left:I

    goto :goto_3b

    :cond_67
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3b

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    sub-float v5, v6, p1

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    goto :goto_3b
.end method

.method private alignTasksToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8

    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mFillsParent:Z

    if-eqz v3, :cond_5

    return-void

    :cond_5
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v3, :cond_29

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_29

    const/4 v0, 0x1

    :goto_11
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_19
    if-ltz v2, :cond_2b

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/wm/Task;->alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    :cond_29
    const/4 v0, 0x0

    goto :goto_11

    :cond_2b
    return-void
.end method

.method private computeMaxPosition(I)I
    .registers 6

    :goto_0
    if-lez p1, :cond_1a

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    :goto_18
    if-nez v0, :cond_1d

    :cond_1a
    return p1

    :cond_1b
    const/4 v0, 0x1

    goto :goto_18

    :cond_1d
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method private computeMinPosition(II)I
    .registers 7

    :goto_0
    if-ge p1, p2, :cond_1a

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    :goto_18
    if-eqz v0, :cond_1d

    :cond_1a
    return p1

    :cond_1b
    const/4 v0, 0x1

    goto :goto_18

    :cond_1d
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private findPositionForTask(Lcom/android/server/wm/Task;IZZ)I
    .registers 11

    if-nez p3, :cond_23

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    :goto_a
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    const/4 v2, 0x0

    if-eqz p4, :cond_25

    move v1, v3

    :goto_14
    if-eqz v0, :cond_28

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/TaskStack;->computeMinPosition(II)I

    move-result v2

    :goto_1a
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4

    :cond_23
    const/4 v0, 0x1

    goto :goto_a

    :cond_25
    add-int/lit8 v1, v3, -0x1

    goto :goto_14

    :cond_28
    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskStack;->computeMaxPosition(I)I

    move-result v1

    goto :goto_1a
.end method

.method static getDockSideUnchecked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .registers 8

    const/4 v4, 0x2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_13

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_11

    return v4

    :cond_11
    const/4 v0, 0x4

    return v0

    :cond_13
    if-ne p2, v4, :cond_24

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_22

    return v3

    :cond_22
    const/4 v0, 0x3

    return v0

    :cond_24
    const/4 v0, -0x1

    return v0
.end method

.method private getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;IZ)V
    .registers 18

    const/4 v0, 0x3

    if-ne p3, v0, :cond_22

    const/4 v8, 0x1

    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_24

    const/4 v10, 0x1

    :goto_f
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v8, :cond_7a

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_22
    const/4 v8, 0x0

    goto :goto_4

    :cond_24
    const/4 v10, 0x0

    goto :goto_f

    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v1, v7, Landroid/view/DisplayInfo;->rotation:I

    iget v2, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_69

    const/4 v5, 0x1

    :goto_55
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    move/from16 v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v9, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-eqz p6, :cond_6e

    if-eqz v10, :cond_6b

    iput v9, p2, Landroid/graphics/Rect;->right:I

    :goto_68
    return-void

    :cond_69
    const/4 v5, 0x0

    goto :goto_55

    :cond_6b
    iput v9, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_68

    :cond_6e
    if-eqz v10, :cond_75

    add-int v0, v9, p5

    iput v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_68

    :cond_75
    add-int v0, v9, p5

    iput v0, p2, Landroid/graphics/Rect;->top:I

    goto :goto_68

    :cond_7a
    if-nez p6, :cond_91

    if-eqz v10, :cond_8a

    iget v0, p4, Landroid/graphics/Rect;->left:I

    sub-int v0, v0, p5

    iput v0, p2, Landroid/graphics/Rect;->right:I

    :goto_84
    xor-int/lit8 v0, p6, 0x1

    invoke-static {p2, v0}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    return-void

    :cond_8a
    iget v0, p4, Landroid/graphics/Rect;->top:I

    sub-int v0, v0, p5

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_84

    :cond_91
    if-eqz v10, :cond_9a

    iget v0, p4, Landroid/graphics/Rect;->right:I

    add-int v0, v0, p5

    iput v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_84

    :cond_9a
    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    add-int v0, v0, p5

    iput v0, p2, Landroid/graphics/Rect;->top:I

    goto :goto_84
.end method

.method private isMinimizedDockAndHomeStackResizable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method static synthetic lambda$-com_android_server_wm_TaskStack_61983(Lcom/android/server/wm/WindowState;)V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    return-void
.end method

.method private positionChildAt(ILcom/android/server/wm/Task;ZZ)V
    .registers 10

    const/4 v4, 0x0

    invoke-direct {p0, p2, p1, p4, v4}, Lcom/android/server/wm/TaskStack;->findPositionForTask(Lcom/android/server/wm/Task;IZZ)I

    move-result v0

    invoke-super {p0, v0, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_32

    const/4 v1, 0x1

    :goto_13
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/16 v3, 0x791a

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void

    :cond_32
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private repositionDockedStackAfterRotation(Landroid/graphics/Rect;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, v0}, Landroid/view/WindowManagerPolicy;->isDockSideAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_f

    return-void

    :cond_f
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v0

    packed-switch v0, :pswitch_data_5e

    :goto_1d
    return-void

    :pswitch_1e
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1d

    :pswitch_2b
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1d

    :pswitch_3e
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1d

    :pswitch_4b
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1d

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_3e
        :pswitch_2b
        :pswitch_4b
    .end packed-switch
.end method

.method private setAdjustedBounds(Landroid/graphics/Rect;)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAnimatingForIme()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_11

    return-void

    :cond_11
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    :cond_29
    :goto_29
    if-eqz v0, :cond_46

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    :goto_2d
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/TaskStack;->alignTasksToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    return-void

    :cond_36
    if-eqz v0, :cond_29

    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v2, :cond_29

    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    if-eqz v2, :cond_43

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    goto :goto_29

    :cond_43
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    goto :goto_29

    :cond_46
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    goto :goto_2d
.end method

.method private setBounds(Landroid/graphics/Rect;)Z
    .registers 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mFillsParent:Z

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v2, v3, Landroid/view/DisplayInfo;->rotation:I

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v0, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-nez p1, :cond_2f

    move v3, v4

    :goto_24
    iput-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mFillsParent:Z

    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mFillsParent:Z

    if-eqz v3, :cond_2c

    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    :cond_2c
    if-nez p1, :cond_31

    return v5

    :cond_2f
    move v3, v5

    goto :goto_24

    :cond_31
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mFillsParent:Z

    if-ne v1, v3, :cond_42

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    if-ne v3, v2, :cond_42

    return v5

    :cond_42
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_52

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/DimLayerController;->updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    :cond_52
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput v2, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    iput v0, p0, Lcom/android/server/wm/TaskStack;->mDensity:I

    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    return v4
.end method

.method private snapDockedStackAfterRotation(Landroid/graphics/Rect;)V
    .registers 21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-static {v0, v15, v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v5, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v0, v13, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v3, v0, v4, v5, v1}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    new-instance v2, Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v7, 0x1

    move/from16 v0, v16

    if-ne v0, v7, :cond_7e

    const/4 v7, 0x1

    :goto_61
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v9

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;Z)V

    invoke-virtual {v2, v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v18

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v10, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v11, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    move v8, v15

    move-object/from16 v9, p1

    move v12, v6

    invoke-static/range {v7 .. v12}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    return-void

    :cond_7e
    const/4 v7, 0x0

    goto :goto_61
.end method

.method private updateAdjustedBounds()V
    .registers 7

    const/4 v0, 0x0

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_42

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->adjustForMinimizedDockedStack(F)Z

    move-result v0

    :cond_e
    :goto_e
    if-nez v0, :cond_15

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    :cond_15
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->setAdjustedBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    if-ne v3, p0, :cond_4d

    const/4 v2, 0x1

    :goto_23
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v3, :cond_41

    if-eqz v0, :cond_41

    xor-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_41

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float v1, v3, v4

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4, v1}, Lcom/android/server/wm/WindowManagerService;->setResizeDimLayer(ZIF)V

    :cond_41
    return-void

    :cond_42
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->adjustForIME(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    goto :goto_e

    :cond_4d
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private useCurrentBounds()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFillsParent:Z

    if-nez v0, :cond_12

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    return v0

    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method addTask(Lcom/android/server/wm/Task;I)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;IZZ)V

    return-void
.end method

.method addTask(Lcom/android/server/wm/Task;IZZ)V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_43

    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eq v1, v2, :cond_43

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Trying to add taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", but it is already attached to stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v3, v3, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_43
    iput-object p0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/TaskStack;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    invoke-direct {p0, p2, p1, p4, p3}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;ZZ)V

    return-void
.end method

.method applyAdjustForImeIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 6

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_15

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    return-void

    :cond_16
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    if-eqz v1, :cond_2f

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    :goto_1c
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_32

    const/4 v1, 0x1

    :goto_26
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/server/wm/Task;->alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    return-void

    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    goto :goto_1c

    :cond_32
    const/4 v1, 0x0

    goto :goto_26
.end method

.method beginImeAdjustAnimation()V
    .registers 5

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_9
    if-ltz v0, :cond_22

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->hasContentToDisplay()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1, v3, v3}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->setWaitingForDrawnIfResizingChanged()V

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_22
    return-void
.end method

.method checkCompleteDeferredRemoval()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->removeImmediately()V

    :cond_f
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->checkCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .registers 3

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public deferScheduleMultiWindowModeChanged()Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public dimFullscreen()Z
    .registers 2

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->isHomeOrRecentsStack(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->fillsParent()Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mStackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mDeferRemoval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mFillsParent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mFillsParent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mBounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_9c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mMinimizeAmount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9c
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v3, :cond_f1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mAdjustedForIme=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mAdjustImeAmount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mAdjustDividerAmount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_f1
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mAdjustedBounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11a
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_122
    if-ltz v1, :cond_146

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/Task;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_122

    :cond_146
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v3

    if-eqz v3, :cond_17e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mWindowAnimationBackgroundSurface:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_17e
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c0

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v3, "  Exiting application tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_197
    if-ltz v0, :cond_1c0

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    const-string/jumbo v3, "  Exiting App #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v3, 0x3a

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(C)V

    const-string/jumbo v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_197

    :cond_1c0
    return-void
.end method

.method endImeAdjustAnimation()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_9
    if-ltz v0, :cond_1a

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1a
    return-void
.end method

.method fillsParent()Z
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->useCurrentBounds()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mFillsParent:Z

    if-nez v2, :cond_17

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v1

    :cond_17
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17

    :cond_1a
    return v1
.end method

.method findHomeTask()Lcom/android/server/wm/Task;
    .registers 4

    const/4 v2, 0x0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eqz v1, :cond_6

    return-object v2

    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_e
    if-ltz v0, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isHomeTask()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    return-object v1

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_2a
    return-object v2
.end method

.method findTaskForResizePoint(IIILcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;)V
    .registers 11

    const/4 v5, 0x1

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->isTaskResizeAllowed(I)Z

    move-result v2

    if-nez v2, :cond_c

    iput-boolean v5, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    return-void

    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_14
    if-ltz v0, :cond_51

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_27

    iput-boolean v5, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    return-void

    :cond_27
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    neg-int v3, p3

    neg-int v4, p3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p3, p3}, Landroid/graphics/Rect;->inset(II)V

    iput-boolean v5, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_4d

    iput-object v1, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    return-void

    :cond_4d
    return-void

    :cond_4e
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_51
    return-void
.end method

.method getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-eqz v0, :cond_16

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getFinalAnimationBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->useCurrentBounds()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_13

    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method getBoundsForNewConfiguration(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method getController()Lcom/android/server/wm/StackWindowController;
    .registers 2

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getController()Lcom/android/server/wm/WindowContainerController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackWindowController;

    return-object v0
.end method

.method bridge synthetic getController()Lcom/android/server/wm/WindowContainerController;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    return-object v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getDockSide()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method getDockSide(Landroid/graphics/Rect;)I
    .registers 6

    const/4 v3, -0x1

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_11

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_11

    return v3

    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v1, :cond_16

    return v3

    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p1, v1, v0}, Lcom/android/server/wm/TaskStack;->getDockSideUnchecked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v1

    return v1
.end method

.method getFinalAnimationBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method getFinalAnimationSourceHintBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method getMinTopStackBottom(Landroid/graphics/Rect;I)I
    .registers 6

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method getMinimizeDistance()I
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    return v4

    :cond_9
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    return v2

    :cond_1d
    const/4 v2, 0x1

    if-eq v0, v2, :cond_23

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2d

    :cond_23
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    sub-int/2addr v2, v3

    return v2

    :cond_2d
    return v4
.end method

.method getName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->toShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOrientation()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->canSpecifyOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x2

    goto :goto_c
.end method

.method getRawBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method getRawFullscreen()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFillsParent:Z

    return v0
.end method

.method getStackDockedModeBoundsLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 15

    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_20

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DockedStackDividerController;->getHomeStackBoundsInDockedMode(Landroid/graphics/Rect;)V

    :goto_1c
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_20
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1c

    :cond_24
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_30

    if-eqz p1, :cond_30

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_30
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3f

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_43

    :cond_3f
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_49

    :cond_43
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_49
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v8

    if-nez v8, :cond_5a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Calling getStackDockedModeBoundsLocked() when there is no docked stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    if-nez p4, :cond_6a

    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    return-void

    :cond_6a
    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v7

    const/4 v0, -0x1

    if-ne v7, v0, :cond_91

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to get valid docked side for docked stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_91
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    const/4 v0, 0x2

    if-eq v7, v0, :cond_a3

    const/4 v0, 0x1

    if-ne v7, v0, :cond_b8

    :cond_a3
    const/4 v6, 0x1

    :goto_a4
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v5

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;IZ)V

    return-void

    :cond_b8
    const/4 v6, 0x0

    goto :goto_a4
.end method

.method getTopVisibleTask()Lcom/android/server/wm/Task;
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_9
    if-ltz v0, :cond_1d

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    if-eqz v2, :cond_1a

    return-object v1

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1d
    return-object v3
.end method

.method public hasMovementAnimations()Z
    .registers 2

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->hasMovementAnimations(I)Z

    move-result v0

    return v0
.end method

.method hasMultipleTaskWithHomeTaskNotTop()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isHomeTask()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method hasTaskForUser(I)Z
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_9
    if-ltz v0, :cond_1c

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    iget v2, v1, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v2, p1, :cond_19

    const/4 v2, 0x1

    return v2

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1c
    return v3
.end method

.method isAdjustedForIme()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    return v0
.end method

.method isAdjustedForMinimizedDockedStack()Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isAnimatingBounds()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    return v0
.end method

.method public isAnimatingBoundsToFullscreen()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAnimatingBounds()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->lastAnimatingBoundsWasToFullscreen()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method isAnimatingForIme()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isAttachedToDisplay()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isForceScaled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    return v0
.end method

.method public lastAnimatingBoundsWasToFullscreen()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingToFullscreen:Z

    return v0
.end method

.method onAllWindowsDrawn()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController;->onAllWindowsDrawn()V

    return-void
.end method

.method public onAnimationEnd(ZLandroid/graphics/Rect;Z)V
    .registers 12

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    if-eqz p1, :cond_16

    if-eqz v0, :cond_16

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v7}, Lcom/android/server/wm/PinnedStackWindowController;->updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V

    :cond_16
    if-eqz p2, :cond_1b

    invoke-virtual {p0, p2, v6}, Lcom/android/server/wm/TaskStack;->setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    :cond_1b
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v4}, Landroid/app/IActivityManager;->notifyPinnedStackAnimationEnded()V

    if-eqz p3, :cond_2e

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->moveTasksToFullscreenStack(IZ)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2e} :catch_60

    :cond_2e
    :goto_2e
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    const/4 v2, 0x0

    :goto_3a
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-ge v2, v4, :cond_50

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->clearPreserveNonFloatingState()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_50
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V
    :try_end_55
    .catchall {:try_start_33 .. :try_end_55} :catchall_5a

    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_5a
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    :catch_60
    move-exception v1

    goto :goto_2e
.end method

.method public onAnimationStart(ZZ)V
    .registers 9

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-eqz p1, :cond_1a

    sget-object v2, Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;->$INST$5:Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/server/wm/TaskStack;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_38

    :cond_1a
    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_37

    :try_start_23
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->notifyPinnedStackAnimationStarted()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2a} :catch_3e

    :goto_2a
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    if-eqz p1, :cond_37

    if-eqz v0, :cond_37

    invoke-virtual {v0, v5, p2}, Lcom/android/server/wm/PinnedStackWindowController;->updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V

    :cond_37
    return-void

    :catchall_38
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :catch_3e
    move-exception v1

    goto :goto_2a
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onDisplayChanged: Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v0, Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "animation background stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, p0, v3, v4}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDockedStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_50

    if-eqz v7, :cond_88

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->fillsParent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_88

    :cond_50
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz v7, :cond_66

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    :cond_66
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    if-nez v0, :cond_86

    const/4 v6, 0x1

    :goto_6d
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;IZ)V

    :cond_7f
    :goto_7f
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo(Landroid/graphics/Rect;)V

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    return-void

    :cond_86
    const/4 v6, 0x0

    goto :goto_6d

    :cond_88
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7f

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/PinnedStackController;->onTaskStackBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_7f

    new-instance v2, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_7f
.end method

.method onRemovedFromDisplay()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DimLayerController;->removeDimLayerUser(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/16 v1, 0x791e

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    iput-object v2, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    :cond_1a
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    :cond_27
    iput-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    return-void
.end method

.method public pinnedStackResizeDisallowed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method positionChildAt(ILcom/android/server/wm/Task;Z)V
    .registers 5

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;ZZ)V

    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    check-cast p2, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    return-void
.end method

.method prepareFreezingTaskBounds()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_8
    if-ltz v1, :cond_18

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->prepareFreezingBounds()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method removeChild(Lcom/android/server/wm/Task;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    iput-object v2, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3, p0, v4}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_1c
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_21
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_29
    if-ltz v0, :cond_43

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne v2, p1, :cond_40

    iput-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->remove(I)Ljava/lang/Object;

    :cond_40
    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    :cond_43
    return-void
.end method

.method bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->removeChild(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method removeIfPossible()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->removeImmediately()V

    return-void
.end method

.method removeImmediately()V
    .registers 1

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->onRemovedFromDisplay()V

    return-void
.end method

.method resetAdjustedForIme(Z)V
    .registers 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    iput-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    iput-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setResizeDimLayer(ZIF)V

    :goto_1b
    return-void

    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    goto :goto_1b
.end method

.method resetAnimationBackgroundAnimator()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->hide()V

    return-void
.end method

.method resetDockedStackToMiddle()V
    .registers 6

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_20

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not a docked stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_20
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBoundsLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getController()Lcom/android/server/wm/StackWindowController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/StackWindowController;->requestResize(Landroid/graphics/Rect;)V

    return-void
.end method

.method setAdjustedForIme(Lcom/android/server/wm/WindowState;Z)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v0, :cond_d

    if-eqz p2, :cond_16

    :cond_d
    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-virtual {p0, v1, v1, v2}, Lcom/android/server/wm/TaskStack;->updateAdjustForIme(FFZ)Z

    :cond_16
    return-void
.end method

.method setAdjustedForMinimizedDock(F)Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_10

    iput p1, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V
    .registers 9

    iget v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v0, v1, :cond_25

    :cond_c
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getLayerForAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    add-int/lit8 v2, v0, -0x1

    shr-int/lit8 v3, p2, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    :cond_25
    return-void
.end method

.method setAnimationFinalBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    iput-boolean p3, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingToFullscreen:Z

    if-eqz p2, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_c
    if-eqz p1, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_13
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_c

    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_13
.end method

.method setBounds(Landroid/graphics/Rect;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/Configuration;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_d
    if-ltz v3, :cond_60

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    if-eqz v1, :cond_3e

    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1, v8}, Lcom/android/server/wm/Task;->resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z

    if-eqz p4, :cond_3c

    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p4, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    :goto_36
    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->setTempInsetBounds(Landroid/graphics/Rect;)V

    :goto_39
    add-int/lit8 v3, v3, -0x1

    goto :goto_d

    :cond_3c
    move-object v4, v5

    goto :goto_36

    :cond_3e
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No config for task: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", is there a mismatch with AM?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_60
    const/4 v4, 0x1

    return v4
.end method

.method public setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1f

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :cond_12
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :try_start_16
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_25

    :goto_1d
    const/4 v1, 0x1

    return v1

    :catchall_1f
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :catch_25
    move-exception v0

    goto :goto_1d
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/Task;ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 13

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_8
    if-ltz v0, :cond_63

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->hasContentToDisplay()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_25

    :cond_20
    if-eq v2, p1, :cond_25

    :cond_22
    :goto_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_25
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isHomeTask()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v4

    if-eqz v4, :cond_5d

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    :goto_38
    if-ne v2, p1, :cond_3f

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3f
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v1

    if-ne v2, p1, :cond_47

    if-eqz v1, :cond_22

    :cond_47
    if-eqz v1, :cond_55

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    neg-int v5, p2

    neg-int v6, p2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_55
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_22

    :cond_5d
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_38

    :cond_63
    return-void
.end method

.method shouldIgnoreInput()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f

    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method

.method stepAppWindowsAnimation(J)V
    .registers 10

    const/4 v5, 0x1

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->stepAppWindowsAnimation(J)V

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->clear()V

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAppTokens:Lcom/android/server/wm/AppTokenList;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppTokenList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :goto_11
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    if-ge v1, v2, :cond_65

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(J)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-boolean v5, v2, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    :cond_3a
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_3d
    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    if-eqz v2, :cond_3a

    iget-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "exiting appToken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " done"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/AppWindowToken;->setAppLayoutChanges(ILjava/lang/String;)V

    goto :goto_3a

    :cond_65
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->clear()V

    return-void
.end method

.method switchUser()V
    .registers 6

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v2, :cond_33

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_24
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_33
    return-void
.end method

.method taskIdFromPoint(II)I
    .registers 8

    const/4 v4, -0x1

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_14
    return v4

    :cond_15
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1d
    if-ltz v1, :cond_40

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_30

    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    :cond_30
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget v3, v0, Lcom/android/server/wm/Task;->mTaskId:I

    return v3

    :cond_40
    return v4
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateAdjustForIme(FFZ)Z
    .registers 5

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_18

    :cond_c
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    iput p2, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    return v0

    :cond_18
    if-nez p3, :cond_c

    const/4 v0, 0x0

    return v0
.end method

.method updateBoundsAfterConfigChange()Z
    .registers 11

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v6, :cond_8

    return v4

    :cond_8
    iget v6, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_34

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Lcom/android/server/wm/TaskStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/PinnedStackController;->onTaskStackBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    iput-boolean v5, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    return v5

    :cond_34
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    iget v2, v6, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    iget v0, v6, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    if-ne v6, v2, :cond_49

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mDensity:I

    if-ne v6, v0, :cond_49

    return v4

    :cond_49
    iget-boolean v6, p0, Lcom/android/server/wm/TaskStack;->mFillsParent:Z

    if-eqz v6, :cond_51

    invoke-direct {p0, v9}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    return v4

    :cond_51
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v7, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v2, v8}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    packed-switch v6, :pswitch_data_94

    :goto_66
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return v5

    :pswitch_6e
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-direct {p0, v6}, Lcom/android/server/wm/TaskStack;->repositionDockedStackAfterRotation(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-direct {p0, v6}, Lcom/android/server/wm/TaskStack;->snapDockedStackAfterRotation(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    move-result v1

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eq v1, v5, :cond_85

    const/4 v7, 0x2

    if-ne v1, v7, :cond_92

    :cond_85
    :goto_85
    invoke-virtual {v6, v4, v9}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockSideChanged(I)V

    goto :goto_66

    :cond_92
    move v4, v5

    goto :goto_85

    :pswitch_data_94
    .packed-switch 0x3
        :pswitch_6e
    .end packed-switch
.end method

.method updateDisplayInfo(Landroid/graphics/Rect;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v3, :cond_6

    return-void

    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_e
    if-ltz v2, :cond_20

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->updateDisplayInfo(Lcom/android/server/wm/DisplayContent;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    :cond_20
    if-eqz p1, :cond_26

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    return-void

    :cond_26
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mFillsParent:Z

    if-eqz v3, :cond_2e

    invoke-direct {p0, v5}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    return-void

    :cond_2e
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v1, v3, Landroid/view/DisplayInfo;->rotation:I

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v0, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    if-ne v3, v1, :cond_52

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mDensity:I

    if-ne v3, v0, :cond_52

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    :cond_52
    return-void
.end method
