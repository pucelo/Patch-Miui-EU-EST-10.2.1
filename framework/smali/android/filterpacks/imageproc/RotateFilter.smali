.class public Landroid/filterpacks/imageproc/RotateFilter;
.super Landroid/filterfw/core/Filter;
.source "RotateFilter.java"


# instance fields
.field private mAngle:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "angle"
    .end annotation
.end field

.field private mHeight:I

.field private mOutputHeight:I

.field private mOutputWidth:I

.field private mProgram:Landroid/filterfw/core/Program;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTileSize:I

    iput v1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    iput v1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    iput v1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    return-void
.end method

.method private updateParameters()V
    .registers 12

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    iget v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    rem-int/lit8 v7, v7, 0x5a

    if-nez v7, :cond_74

    iget v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    rem-int/lit16 v7, v7, 0xb4

    if-nez v7, :cond_5d

    const/4 v2, 0x0

    iget v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    rem-int/lit16 v7, v7, 0x168

    if-nez v7, :cond_5a

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_19
    new-instance v3, Landroid/filterfw/geometry/Point;

    neg-float v7, v0

    add-float/2addr v7, v2

    add-float/2addr v7, v10

    mul-float/2addr v7, v9

    neg-float v8, v2

    sub-float/2addr v8, v0

    add-float/2addr v8, v10

    mul-float/2addr v8, v9

    invoke-direct {v3, v7, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v4, Landroid/filterfw/geometry/Point;

    add-float v7, v0, v2

    add-float/2addr v7, v10

    mul-float/2addr v7, v9

    sub-float v8, v2, v0

    add-float/2addr v8, v10

    mul-float/2addr v8, v9

    invoke-direct {v4, v7, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v5, Landroid/filterfw/geometry/Point;

    neg-float v7, v0

    sub-float/2addr v7, v2

    add-float/2addr v7, v10

    mul-float/2addr v7, v9

    neg-float v8, v2

    add-float/2addr v8, v0

    add-float/2addr v8, v10

    mul-float/2addr v8, v9

    invoke-direct {v5, v7, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v6, Landroid/filterfw/geometry/Point;

    sub-float v7, v0, v2

    add-float/2addr v7, v10

    mul-float/2addr v7, v9

    add-float v8, v2, v0

    add-float/2addr v8, v10

    mul-float/2addr v8, v9

    invoke-direct {v6, v7, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v1, Landroid/filterfw/geometry/Quad;

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    iget-object v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    check-cast v7, Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v7, v1}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    return-void

    :cond_5a
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_19

    :cond_5d
    const/4 v0, 0x0

    iget v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    add-int/lit8 v7, v7, 0x5a

    rem-int/lit16 v7, v7, 0x168

    if-nez v7, :cond_71

    const/high16 v2, -0x40800000    # -1.0f

    :goto_68
    iget v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    iput v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    iget v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    iput v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    goto :goto_19

    :cond_71
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_68

    :cond_74
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "degree has to be multiply of 90."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 4

    iget-object v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/filterpacks/imageproc/RotateFilter;->updateParameters()V

    :cond_7
    return-void
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 7

    packed-switch p2, :pswitch_data_36

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Filter Sharpen does not support frames of target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_24
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iget v1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    iput p2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    return-void

    :pswitch_data_36
    .packed-switch 0x3
        :pswitch_24
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 9

    const/4 v6, 0x3

    const-string/jumbo v4, "image"

    invoke-virtual {p0, v4}, Landroid/filterpacks/imageproc/RotateFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    iget-object v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v4, :cond_18

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    if-eq v4, v5, :cond_1f

    :cond_18
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/RotateFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    :cond_1f
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    if-ne v4, v5, :cond_2f

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    if-eq v4, v5, :cond_46

    :cond_2f
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    iput v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    iput v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    iget v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    iput v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    iget v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    iput v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    invoke-direct {p0}, Landroid/filterpacks/imageproc/RotateFilter;->updateParameters()V

    :cond_46
    iget v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    iget v5, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    invoke-static {v4, v5, v6, v6}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v3

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    iget-object v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    const-string/jumbo v4, "image"

    invoke-virtual {p0, v4, v2}, Landroid/filterpacks/imageproc/RotateFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public setupPorts()V
    .registers 3

    const-string/jumbo v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/RotateFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    const-string/jumbo v0, "image"

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/RotateFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
