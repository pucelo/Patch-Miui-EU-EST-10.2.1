.class Landroid/view/SurfaceView$SurfaceControlWithBackground;
.super Landroid/view/SurfaceControl;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SurfaceControlWithBackground"
.end annotation


# instance fields
.field private mBackgroundControl:Landroid/view/SurfaceControl;

.field private mOpaque:Z

.field public mVisible:Z

.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    new-instance v0, Landroid/view/SurfaceControl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Background for - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v1, 0x20000

    or-int v6, p7, v1

    const/4 v5, -0x1

    move-object v1, p2

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    and-int/lit16 v0, p7, 0x400

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    :goto_3a
    iput-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    return-void

    :cond_3d
    const/4 v0, 0x0

    goto :goto_3a
.end method


# virtual methods
.method public deferTransactionUntil(Landroid/os/IBinder;J)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    return-void
.end method

.method public deferTransactionUntil(Landroid/view/Surface;J)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/Surface;J)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/Surface;J)V

    return-void
.end method

.method public destroy()V
    .registers 2

    invoke-super {p0}, Landroid/view/SurfaceControl;->destroy()V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    return-void
.end method

.method public hide()V
    .registers 2

    invoke-super {p0}, Landroid/view/SurfaceControl;->hide()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->updateBackgroundVisibility()V

    return-void
.end method

.method public release()V
    .registers 2

    invoke-super {p0}, Landroid/view/SurfaceControl;->release()V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method

.method public setAlpha(F)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    return-void
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setLayer(I)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    return-void
.end method

.method public setLayerStack(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    return-void
.end method

.method public setMatrix(FFFF)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    return-void
.end method

.method public setOpaque(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V

    iput-boolean p1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->updateBackgroundVisibility()V

    return-void
.end method

.method public setPosition(FF)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    return-void
.end method

.method public setSecure(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V

    return-void
.end method

.method public setSize(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    return-void
.end method

.method public show()V
    .registers 2

    invoke-super {p0}, Landroid/view/SurfaceControl;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->updateBackgroundVisibility()V

    return-void
.end method

.method updateBackgroundVisibility()V
    .registers 2

    iget-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    goto :goto_d
.end method
