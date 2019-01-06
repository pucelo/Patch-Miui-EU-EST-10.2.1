.class public Lcom/android/server/wm/AppWindowAnimatorHelper;
.super Ljava/lang/Object;
.source "AppWindowAnimatorHelper.java"


# instance fields
.field private final mAppRect:Landroid/graphics/Rect;

.field private mHasNotifyMiuiThumbnailAnimEnd:Z

.field mHasNotifyMiuiThumbnailAnimStart:Z

.field private mLayer:I

.field private mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

.field private final mMiuiThumbnailRect:Landroid/graphics/Rect;

.field private mThumbnail:Landroid/view/SurfaceControl;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;ILcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mAppRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiThumbnailRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mAppRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput-object p3, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mThumbnail:Landroid/view/SurfaceControl;

    iput p4, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mLayer:I

    iput-object p5, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    return-void
.end method


# virtual methods
.method clearMiuiThumbnail()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mHasNotifyMiuiThumbnailAnimEnd:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-static {v0}, Lcom/android/server/wm/AppTransitionInjector;->notifyMiuiAnimationEnd(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    :goto_a
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mHasNotifyMiuiThumbnailAnimStart:Z

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mAppRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_17
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mHasNotifyMiuiThumbnailAnimEnd:Z

    goto :goto_a
.end method

.method stepMiuiThumbnailAnimation(Landroid/view/animation/Transformation;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppWindowAnimatorHelper;->stepMiuiThumbnailAnimation(Landroid/view/animation/Transformation;Z)V

    return-void
.end method

.method stepMiuiThumbnailAnimation(Landroid/view/animation/Transformation;Z)V
    .registers 11

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mHasNotifyMiuiThumbnailAnimStart:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1d

    xor-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1d

    iput-boolean v7, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mHasNotifyMiuiThumbnailAnimStart:Z

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-static {v0}, Lcom/android/server/wm/AppTransitionInjector;->notifyMiuiAnimationStart(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    :cond_1d
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    sub-float v3, v6, v0

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mAppRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget v4, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mLayer:I

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mThumbnail:Landroid/view/SurfaceControl;

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/AppTransitionInjector;->calculateMiuiThumbnailSpec(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;FILandroid/view/SurfaceControl;)V

    cmpl-float v0, v3, v6

    if-nez v0, :cond_49

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mHasNotifyMiuiThumbnailAnimEnd:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_49

    xor-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_49

    iput-boolean v7, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mHasNotifyMiuiThumbnailAnimEnd:Z

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-static {v0}, Lcom/android/server/wm/AppTransitionInjector;->notifyMiuiAnimationEnd(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    :cond_49
    return-void
.end method
