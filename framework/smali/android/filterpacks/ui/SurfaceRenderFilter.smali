.class public Landroid/filterpacks/ui/SurfaceRenderFilter;
.super Landroid/filterfw/core/Filter;
.source "SurfaceRenderFilter.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceRenderFilter"


# instance fields
.field private final RENDERMODE_FILL_CROP:I

.field private final RENDERMODE_FIT:I

.field private final RENDERMODE_STRETCH:I

.field private mAspectRatio:F

.field private mIsBound:Z

.field private mLogVerbose:Z

.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRenderMode:I

.field private mRenderModeString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "renderMode"
    .end annotation
.end field

.field private mScreen:Landroid/filterfw/core/GLFrame;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "surfaceView"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->RENDERMODE_STRETCH:I

    iput v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->RENDERMODE_FIT:I

    iput v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->RENDERMODE_FILL_CROP:I

    iput-boolean v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mIsBound:Z

    iput v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    const-string/jumbo v0, "SurfaceRenderFilter"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mLogVerbose:Z

    return-void
.end method

.method private updateTargetRect()V
    .registers 8

    const/4 v6, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    iget v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenWidth:I

    if-lez v2, :cond_22

    iget v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenHeight:I

    if-lez v2, :cond_22

    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v2, :cond_22

    iget v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenHeight:I

    int-to-float v3, v3

    div-float v1, v2, v3

    iget v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    div-float v0, v1, v2

    iget v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    packed-switch v2, :pswitch_data_5e

    :cond_22
    :goto_22
    return-void

    :pswitch_23
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v6, v6, v5, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_22

    :pswitch_29
    cmpl-float v2, v0, v5

    if-lez v2, :cond_39

    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    div-float v3, v4, v0

    sub-float v3, v4, v3

    div-float v4, v5, v0

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_22

    :cond_39
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    mul-float v3, v4, v0

    sub-float v3, v4, v3

    invoke-virtual {v2, v6, v3, v5, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_22

    :pswitch_43
    cmpl-float v2, v0, v5

    if-lez v2, :cond_51

    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    mul-float v3, v4, v0

    sub-float v3, v4, v3

    invoke-virtual {v2, v6, v3, v5, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_22

    :cond_51
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    div-float v3, v4, v0

    sub-float v3, v4, v3

    div-float v4, v5, v0

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_22

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_23
        :pswitch_29
        :pswitch_43
    .end packed-switch
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .registers 3

    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterSurfaceView;->unbind()V

    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 3

    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateTargetRect()V

    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .registers 4

    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterSurfaceView;->unbind()V

    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/filterfw/core/FilterSurfaceView;->bindToListener(Landroid/view/SurfaceHolder$Callback;Landroid/filterfw/core/GLEnvironment;)V

    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 8

    const/4 v5, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v1, v3, v3, v3}, Landroid/filterfw/core/ShaderProgram;->setClearColor(FFF)V

    invoke-virtual {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateRenderMode()V

    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v1}, Landroid/filterfw/core/FilterSurfaceView;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v2}, Landroid/filterfw/core/FilterSurfaceView;->getHeight()I

    move-result v2

    invoke-static {v1, v2, v5, v5}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/16 v4, 0x65

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/GLFrame;

    iput-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 12

    const/4 v9, 0x3

    iget-boolean v6, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mIsBound:Z

    if-nez v6, :cond_20

    const-string/jumbo v6, "SurfaceRenderFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": Ignoring frame as there is no surface to render to!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    iget-boolean v6, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mLogVerbose:Z

    if-eqz v6, :cond_2d

    const-string/jumbo v6, "SurfaceRenderFilter"

    const-string/jumbo v7, "Starting frame processing"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iget-object v6, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v6}, Landroid/filterfw/core/FilterSurfaceView;->getGLEnv()Landroid/filterfw/core/GLEnvironment;

    move-result-object v2

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v6

    if-eq v2, v6, :cond_42

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Surface created under different GLEnvironment!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_42
    const-string/jumbo v6, "frame"

    invoke-virtual {p0, v6}, Landroid/filterpacks/ui/SurfaceRenderFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    iget v6, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    cmpl-float v6, v1, v6

    if-eqz v6, :cond_94

    iget-boolean v6, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mLogVerbose:Z

    if-eqz v6, :cond_8f

    const-string/jumbo v6, "SurfaceRenderFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "New aspect ratio: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", previously: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    iput v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateTargetRect()V

    :cond_94
    const/4 v3, 0x0

    iget-boolean v6, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mLogVerbose:Z

    if-eqz v6, :cond_b7

    const-string/jumbo v6, "SurfaceRenderFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Got input format: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b7
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v5

    if-eq v5, v9, :cond_e3

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    invoke-virtual {v6, v4, v9}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    move-result-object v3

    const/4 v0, 0x1

    :goto_ca
    iget-object v6, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {v6}, Landroid/filterfw/core/FilterSurfaceView;->getSurfaceId()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    iget-object v6, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v7, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v6, v3, v7}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v2}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    if-eqz v0, :cond_e2

    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    :cond_e2
    return-void

    :cond_e3
    move-object v3, v4

    goto :goto_ca
.end method

.method public setupPorts()V
    .registers 3

    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "NULL SurfaceView passed to SurfaceRenderFilter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const-string/jumbo v0, "frame"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/ui/SurfaceRenderFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method

.method public declared-synchronized surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_17

    iput p3, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenWidth:I

    iput p4, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenHeight:I

    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    iget v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenWidth:I

    iget v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenHeight:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/filterfw/core/GLFrame;->setViewport(IIII)V

    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateTargetRect()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mIsBound:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mIsBound:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 3

    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    :cond_9
    return-void
.end method

.method public updateRenderMode()V
    .registers 4

    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    const-string/jumbo v1, "stretch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    :cond_12
    :goto_12
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateTargetRect()V

    return-void

    :cond_16
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    const-string/jumbo v1, "fit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    goto :goto_12

    :cond_25
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    const-string/jumbo v1, "fill_crop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x2

    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    goto :goto_12

    :cond_34
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown render mode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
