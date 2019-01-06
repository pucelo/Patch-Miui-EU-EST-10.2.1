.class public Landroid/filterpacks/imageproc/ResizeFilter;
.super Landroid/filterfw/core/Filter;
.source "ResizeFilter.java"


# instance fields
.field private mGenerateMipMap:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "generateMipMap"
    .end annotation
.end field

.field private mInputChannels:I

.field private mKeepAspectRatio:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "keepAspectRatio"
    .end annotation
.end field

.field private mLastFormat:Landroid/filterfw/core/FrameFormat;

.field private mOHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "oheight"
    .end annotation
.end field

.field private mOWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "owidth"
    .end annotation
.end field

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    iput-boolean v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mKeepAspectRatio:Z

    iput-boolean v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mGenerateMipMap:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    return-void
.end method


# virtual methods
.method protected createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V
    .registers 6

    iget-object v1, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v1

    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v2

    if-ne v1, v2, :cond_11

    return-void

    :cond_11
    iput-object p2, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v1

    packed-switch v1, :pswitch_data_34

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "ResizeFilter could not create suitable program!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_23
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Native ResizeFilter not implemented yet!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2c
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mProgram:Landroid/filterfw/core/Program;

    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_23
        :pswitch_2c
    .end packed-switch
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3

    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 9

    const-string/jumbo v5, "image"

    invoke-virtual {p0, v5}, Landroid/filterpacks/imageproc/ResizeFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Landroid/filterpacks/imageproc/ResizeFilter;->createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v4

    iget-boolean v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mKeepAspectRatio:Z

    if-eqz v5, :cond_2c

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    iget v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOWidth:I

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v6

    div-int/2addr v5, v6

    iput v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOHeight:I

    :cond_2c
    iget v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOWidth:I

    iget v6, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    iget-boolean v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mGenerateMipMap:Z

    if-eqz v5, :cond_6c

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/GLFrame;

    const/16 v5, 0x2801

    const/16 v6, 0x2701

    invoke-virtual {v2, v5, v6}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    invoke-virtual {v2, v0}, Landroid/filterfw/core/GLFrame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    iget-object v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v5, v2, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    :goto_62
    const-string/jumbo v5, "image"

    invoke-virtual {p0, v5, v3}, Landroid/filterpacks/imageproc/ResizeFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void

    :cond_6c
    iget-object v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v5, v0, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    goto :goto_62
.end method

.method public setupPorts()V
    .registers 3

    const-string/jumbo v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ResizeFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    const-string/jumbo v0, "image"

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ResizeFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
