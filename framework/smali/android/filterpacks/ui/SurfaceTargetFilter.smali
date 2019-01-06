.class public Landroid/filterpacks/ui/SurfaceTargetFilter;
.super Landroid/filterfw/core/Filter;
.source "SurfaceTargetFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceRenderFilter"


# instance fields
.field private final RENDERMODE_FILL_CROP:I

.field private final RENDERMODE_FIT:I

.field private final RENDERMODE_STRETCH:I

.field private mAspectRatio:F

.field private mGlEnv:Landroid/filterfw/core/GLEnvironment;

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
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "oheight"
    .end annotation
.end field

.field private mScreenWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "owidth"
    .end annotation
.end field

.field private mSurface:Landroid/view/Surface;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "surface"
    .end annotation
.end field

.field private mSurfaceId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->RENDERMODE_STRETCH:I

    iput v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->RENDERMODE_FIT:I

    iput v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->RENDERMODE_FILL_CROP:I

    iput v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderMode:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mAspectRatio:F

    const/4 v0, -0x1

    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    const-string/jumbo v0, "SurfaceRenderFilter"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mLogVerbose:Z

    return-void
.end method

.method private registerSurface()V
    .registers 4

    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mGlEnv:Landroid/filterfw/core/GLEnvironment;

    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->registerSurface(Landroid/view/Surface;)I

    move-result v0

    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    iget v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    if-gez v0, :cond_2a

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not register Surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    return-void
.end method

.method private unregisterSurface()V
    .registers 3

    iget v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    if-lez v0, :cond_b

    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mGlEnv:Landroid/filterfw/core/GLEnvironment;

    iget v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    :cond_b
    return-void
.end method

.method private updateTargetRect()V
    .registers 8

    const/4 v6, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenWidth:I

    if-lez v2, :cond_22

    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenHeight:I

    if-lez v2, :cond_22

    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v2, :cond_22

    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenHeight:I

    int-to-float v3, v3

    div-float v1, v2, v3

    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mAspectRatio:F

    div-float v0, v1, v2

    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderMode:I

    packed-switch v2, :pswitch_data_5e

    :cond_22
    :goto_22
    return-void

    :pswitch_23
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v6, v6, v5, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_22

    :pswitch_29
    cmpl-float v2, v0, v5

    if-lez v2, :cond_39

    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    div-float v3, v4, v0

    sub-float v3, v4, v3

    div-float v4, v5, v0

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_22

    :cond_39
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    mul-float v3, v4, v0

    sub-float v3, v4, v3

    invoke-virtual {v2, v6, v3, v5, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_22

    :pswitch_43
    cmpl-float v2, v0, v5

    if-lez v2, :cond_51

    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    mul-float v3, v4, v0

    sub-float v3, v4, v3

    invoke-virtual {v2, v6, v3, v5, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_22

    :cond_51
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

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
    .registers 2

    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->unregisterSurface()V

    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    iget v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenWidth:I

    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/filterfw/core/GLFrame;->setViewport(IIII)V

    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->updateTargetRect()V

    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .registers 2

    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->registerSurface()V

    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 8

    const/4 v5, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mGlEnv:Landroid/filterfw/core/GLEnvironment;

    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v1, v3, v3, v3}, Landroid/filterfw/core/ShaderProgram;->setClearColor(FFF)V

    iget v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenWidth:I

    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenHeight:I

    invoke-static {v1, v2, v5, v5}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/16 v4, 0x65

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/GLFrame;

    iput-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->updateRenderMode()V

    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 11

    const/4 v8, 0x3

    iget-boolean v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mLogVerbose:Z

    if-eqz v5, :cond_e

    const-string/jumbo v5, "SurfaceRenderFilter"

    const-string/jumbo v6, "Starting frame processing"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string/jumbo v5, "frame"

    invoke-virtual {p0, v5}, Landroid/filterpacks/ui/SurfaceTargetFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v5, v6

    iget v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mAspectRatio:F

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_60

    iget-boolean v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mLogVerbose:Z

    if-eqz v5, :cond_5b

    const-string/jumbo v5, "SurfaceRenderFilter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "New aspect ratio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", previously: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mAspectRatio:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    iput v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mAspectRatio:F

    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->updateTargetRect()V

    :cond_60
    const/4 v2, 0x0

    iget-boolean v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mLogVerbose:Z

    if-eqz v5, :cond_83

    const-string/jumbo v5, "SurfaceRenderFilter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Got input format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    if-eq v4, v8, :cond_af

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    invoke-virtual {v5, v3, v8}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    move-result-object v2

    const/4 v0, 0x1

    :goto_96
    iget-object v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mGlEnv:Landroid/filterfw/core/GLEnvironment;

    iget v6, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    invoke-virtual {v5, v6}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    iget-object v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v6, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v5, v2, v6}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    iget-object v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mGlEnv:Landroid/filterfw/core/GLEnvironment;

    invoke-virtual {v5}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    if-eqz v0, :cond_ae

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    :cond_ae
    return-void

    :cond_af
    move-object v2, v3

    goto :goto_96
.end method

.method public setupPorts()V
    .registers 3

    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "NULL Surface passed to SurfaceTargetFilter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const-string/jumbo v0, "frame"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/ui/SurfaceTargetFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 3

    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    :cond_9
    return-void
.end method

.method public updateRenderMode()V
    .registers 4

    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderModeString:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderModeString:Ljava/lang/String;

    const-string/jumbo v1, "stretch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderMode:I

    :cond_12
    :goto_12
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->updateTargetRect()V

    return-void

    :cond_16
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderModeString:Ljava/lang/String;

    const-string/jumbo v1, "fit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderMode:I

    goto :goto_12

    :cond_25
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderModeString:Ljava/lang/String;

    const-string/jumbo v1, "fill_crop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x2

    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderMode:I

    goto :goto_12

    :cond_34
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown render mode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderModeString:Ljava/lang/String;

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
