.class public Lcom/android/server/wm/MultiWindowAnimation;
.super Ljava/lang/Object;
.source "MultiWindowAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiWindowAnimation$1;,
        Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;
    }
.end annotation


# static fields
.field static final ANIMATION_TIMEOUT:I = 0x7d0

.field public static final TRANSIT_ENTER:I = 0x2

.field public static final TRANSIT_EXIT:I = 0x3

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_RESIZE:I = 0x4

.field public static final TRANSIT_SWAP:I = 0x1


# instance fields
.field private mAnimRunning:Z

.field private mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

.field private mAnimation:Landroid/view/animation/Animation;

.field private final mAnimationTimeoutRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSession:Landroid/view/SurfaceSession;

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mTransition:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceSession;Lcom/android/server/wm/WindowManagerService;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/MultiWindowAnimation$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiWindowAnimation$1;-><init>(Lcom/android/server/wm/MultiWindowAnimation;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimationTimeoutRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimRunning:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mTransformation:Landroid/view/animation/Transformation;

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/wm/MultiWindowAnimation;->mSession:Landroid/view/SurfaceSession;

    iput-object p2, p0, Lcom/android/server/wm/MultiWindowAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object p4, p0, Lcom/android/server/wm/MultiWindowAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method private animate(JI)Z
    .registers 11

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimRunning:Z

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    if-eqz v1, :cond_46

    iput-boolean v6, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimRunning:Z

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    iget-object v3, v3, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    iget-object v4, v4, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    iget-object v5, v5, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    return v6

    :cond_46
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_4b

    return v3

    :cond_4b
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    if-nez v1, :cond_5d

    return v3

    :cond_5d
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->setAnimationTransform(Landroid/view/animation/Transformation;)V

    if-eqz v0, :cond_67

    return v6

    :cond_67
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->kill()V

    iput-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    iput-boolean v3, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimRunning:Z

    iput v3, p0, Lcom/android/server/wm/MultiWindowAnimation;->mTransition:I

    iput-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimation:Landroid/view/animation/Animation;

    return v3
.end method

.method private createSurface()Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;
    .registers 12

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    iget v0, v8, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3f

    iget v0, v8, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_41

    const/4 v10, 0x1

    :goto_11
    if-eqz v10, :cond_43

    iget v4, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_15
    if-eqz v10, :cond_46

    iget v5, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_19
    :try_start_19
    new-instance v0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mSession:Landroid/view/SurfaceSession;

    iget v6, v8, Landroid/view/DisplayInfo;->layerStack:I

    iget v7, v8, Landroid/view/DisplayInfo;->rotation:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;-><init>(Landroid/view/SurfaceSession;IIIIII)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;
    :try_end_28
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_19 .. :try_end_28} :catch_49

    :goto_28
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->show()V

    :cond_31
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimationTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    return-object v0

    :cond_3f
    const/4 v10, 0x1

    goto :goto_11

    :cond_41
    const/4 v10, 0x0

    goto :goto_11

    :cond_43
    iget v4, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_15

    :cond_46
    iget v5, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_19

    :catch_49
    move-exception v9

    invoke-virtual {v9}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V

    goto :goto_28
.end method

.method private stepAnimation(J)Z
    .registers 4

    iget v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mTransition:I

    packed-switch v0, :pswitch_data_10

    const/4 v0, 0x0

    return v0

    :pswitch_7
    const v0, 0x10a0001

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/MultiWindowAnimation;->animate(JI)Z

    move-result v0

    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public isAnimating()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mTransition:I

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method setTransition(I)V
    .registers 3

    packed-switch p1, :pswitch_data_e

    :cond_3
    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    if-nez v0, :cond_3

    iput p1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mTransition:I

    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowAnimation;->createSurface()Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    goto :goto_3

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method stepAnimationLocked(J)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/MultiWindowAnimation;->stepAnimation(J)Z

    move-result v0

    return v0
.end method

.method public stopAnimation()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->kill()V

    iput-object v2, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    :cond_d
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimRunning:Z

    iput v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mTransition:I

    return-void
.end method
