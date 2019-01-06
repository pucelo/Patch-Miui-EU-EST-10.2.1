.class Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;
.super Ljava/lang/Object;
.source "MiuiGesturePointerEventListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiuiGesturePointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureAnimatorUpdateListener"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mInfo:Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

.field private mIsRecent:Z

.field private mWin:Lcom/android/server/wm/WindowState;

.field final synthetic this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;Landroid/animation/ValueAnimator;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;Z)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mAnimator:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    iput-object p4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mInfo:Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

    iput-boolean p5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mIsRecent:Z

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 18

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mIsRecent:Z

    if-eqz v1, :cond_fe

    const-string/jumbo v1, "recents"

    :goto_9
    invoke-static {v1}, Lcom/android/server/wm/FullScreenEventReporter;->caculateAnimationFrameInterval(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_fd

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_fd

    const-string/jumbo v1, "translateX"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const-string/jumbo v1, "translateY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    const-string/jumbo v1, "scale"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string/jumbo v1, "clip"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_103

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    :goto_68
    if-eqz v2, :cond_fd

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_114

    :try_start_6d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mIsRecent:Z

    if-eqz v1, :cond_106

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_106

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, v13

    float-to-int v14, v1

    :goto_89
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mInfo:Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

    iget-object v1, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowFrame:Landroid/graphics/Rect;

    invoke-direct {v7, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_108

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v14}, Landroid/graphics/Rect;->offsetTo(II)V

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    :goto_a4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v15

    if-eqz v15, :cond_dd

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get4(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Ljava/util/Set;

    move-result-object v4

    monitor-enter v4
    :try_end_b8
    .catchall {:try_start_6d .. :try_end_b8} :catchall_10f

    :try_start_b8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get4(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Ljava/util/Set;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_c7
    .catchall {:try_start_b8 .. :try_end_c7} :catchall_122

    move-result v1

    xor-int/lit8 v11, v1, 0x1

    :try_start_ca
    monitor-exit v4

    if-eqz v11, :cond_125

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get1(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGestureController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5, v7}, Lcom/android/server/wm/MiuiGestureController;->notifyDrawRoundRect(Lcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;)V

    :cond_dd
    :goto_dd
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get1(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGestureController;

    move-result-object v1

    int-to-float v4, v14

    mul-float/2addr v4, v3

    sub-float v4, v10, v4

    invoke-virtual {v1, v2, v9, v4}, Lcom/android/server/wm/MiuiGestureController;->setPositionByGesture(Lcom/android/server/wm/WindowSurfaceController;FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get1(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGestureController;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/MiuiGestureController;->setMatrixByGesture(Lcom/android/server/wm/WindowSurfaceController;FFFF)V
    :try_end_fa
    .catchall {:try_start_ca .. :try_end_fa} :catchall_10f

    :try_start_fa
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_fd
    :goto_fd
    return-void

    :cond_fe
    const-string/jumbo v1, "cancel"
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_101} :catch_114

    goto/16 :goto_9

    :cond_103
    const/4 v2, 0x0

    goto/16 :goto_68

    :cond_106
    const/4 v14, 0x0

    goto :goto_89

    :cond_108
    :try_start_108
    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v14}, Landroid/graphics/Rect;->offsetTo(II)V
    :try_end_10e
    .catchall {:try_start_108 .. :try_end_10e} :catchall_10f

    goto :goto_a4

    :catchall_10f
    move-exception v1

    :try_start_110
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_114} :catch_114

    :catch_114
    move-exception v12

    const-string/jumbo v1, "MiuiGesturePointerEventListener"

    const-string/jumbo v4, "onAnimationUpdate exception"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_fd

    :catchall_122
    move-exception v1

    :try_start_123
    monitor-exit v4

    throw v1

    :cond_125
    const/4 v1, 0x0

    invoke-virtual {v2, v7, v1}, Lcom/android/server/wm/WindowSurfaceController;->setCropInTransaction(Landroid/graphics/Rect;Z)V
    :try_end_129
    .catchall {:try_start_123 .. :try_end_129} :catchall_10f

    goto :goto_dd
.end method
