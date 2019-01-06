.class Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;
.super Ljava/lang/Object;
.source "MultiWindowAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiWindowAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiWindowAnimSurface"
.end annotation


# static fields
.field static final FREEZE_LAYER:I = 0x1e8481


# instance fields
.field mRect:Landroid/graphics/Rect;

.field mRotation:I

.field mSurface:Landroid/view/SurfaceControl;

.field mTmpFloats:[F

.field mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;IIIIII)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpFloats:[F

    sub-int v3, p4, p2

    sub-int v4, p5, p3

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iput p7, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRotation:I

    new-instance v0, Landroid/view/SurfaceControl;

    const-string/jumbo v2, "MultiWindowAnimSurface"

    const/4 v5, 0x4

    const/4 v6, 0x4

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    new-instance v7, Landroid/view/Surface;

    invoke-direct {v7}, Landroid/view/Surface;-><init>()V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    invoke-virtual {v7}, Landroid/view/Surface;->destroy()V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p6}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    const v1, 0x1e8481

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    iget v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRotation:I

    packed-switch v0, :pswitch_data_a6

    :goto_59
    return-void

    :pswitch_5a
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_59

    :pswitch_6d
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    int-to-float v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_59

    :pswitch_80
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    int-to-float v1, v3

    int-to-float v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_59

    :pswitch_93
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    int-to-float v1, v4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_59

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_6d
        :pswitch_80
        :pswitch_93
    .end packed-switch
.end method


# virtual methods
.method kill()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    :cond_c
    return-void
.end method

.method setAnimationTransform(Landroid/view/animation/Transformation;)V
    .registers 12

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v4

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v4

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v3, v4

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v0, v4

    iget v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRotation:I

    packed-switch v4, :pswitch_data_94

    :goto_26
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpFloats:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpFloats:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpFloats:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpFloats:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpFloats:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpFloats:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpFloats:[F

    const/4 v9, 0x4

    aget v8, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setAlpha(F)V

    return-void

    :pswitch_5f
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_26

    :pswitch_65
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v3, v2

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_26

    :pswitch_74
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v3, v1

    sub-float v6, v0, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_26

    :pswitch_85
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v0, v1

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_26

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_65
        :pswitch_74
        :pswitch_85
    .end packed-switch
.end method

.method show()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    :cond_9
    return-void
.end method
