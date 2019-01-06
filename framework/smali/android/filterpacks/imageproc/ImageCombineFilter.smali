.class public abstract Landroid/filterpacks/imageproc/ImageCombineFilter;
.super Landroid/filterfw/core/Filter;
.source "ImageCombineFilter.java"


# instance fields
.field protected mCurrentTarget:I

.field protected mInputNames:[Ljava/lang/String;

.field protected mOutputName:Ljava/lang/String;

.field protected mParameterName:Ljava/lang/String;

.field protected mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mCurrentTarget:I

    iput-object p2, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    iput-object p3, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mOutputName:Ljava/lang/String;

    iput-object p4, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mParameterName:Ljava/lang/String;

    return-void
.end method

.method private assertAllInputTargetsMatch()V
    .registers 7

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/ImageCombineFilter;->getInputFormat(Ljava/lang/String;)Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v1

    iget-object v3, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    array-length v4, v3

    :goto_10
    if-ge v2, v4, :cond_42

    aget-object v0, v3, v2

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/ImageCombineFilter;->getInputFormat(Ljava/lang/String;)Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v5

    if-eq v1, v5, :cond_3f

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Type mismatch of input formats in filter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". All input frames must have the same target!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_42
    return-void
.end method


# virtual methods
.method protected abstract getNativeProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3

    return-object p2
.end method

.method protected abstract getShaderProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 12

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    array-length v5, v5

    new-array v3, v5, [Landroid/filterfw/core/Frame;

    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    move v1, v0

    :goto_c
    if-ge v5, v8, :cond_1c

    aget-object v2, v7, v5

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2}, Landroid/filterpacks/imageproc/ImageCombineFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v9

    aput-object v9, v3, v1

    add-int/lit8 v5, v5, 0x1

    move v1, v0

    goto :goto_c

    :cond_1c
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    aget-object v7, v3, v6

    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v4

    aget-object v5, v3, v6

    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v5

    invoke-virtual {p0, v5, p1}, Landroid/filterpacks/imageproc/ImageCombineFilter;->updateProgramWithTarget(ILandroid/filterfw/core/FilterContext;)V

    iget-object v5, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v5, v3, v4}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    iget-object v5, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mOutputName:Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Landroid/filterpacks/imageproc/ImageCombineFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public setupPorts()V
    .registers 10

    const/4 v8, 0x0

    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mParameterName:Ljava/lang/String;

    if-eqz v0, :cond_19

    :try_start_5
    const-class v0, Landroid/filterpacks/imageproc/ImageCombineFilter;

    const-string/jumbo v1, "mProgram"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iget-object v1, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mParameterName:Ljava/lang/String;

    iget-object v2, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mParameterName:Ljava/lang/String;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/filterpacks/imageproc/ImageCombineFilter;->addProgramPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;Z)V
    :try_end_19
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_19} :catch_2c

    :cond_19
    iget-object v1, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    array-length v2, v1

    move v0, v8

    :goto_1d
    if-ge v0, v2, :cond_36

    aget-object v7, v1, v0

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v4

    invoke-virtual {p0, v7, v4}, Landroid/filterpacks/imageproc/ImageCombineFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :catch_2c
    move-exception v6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Internal Error: mProgram field not found!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mOutputName:Ljava/lang/String;

    iget-object v1, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ImageCombineFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected updateProgramWithTarget(ILandroid/filterfw/core/FilterContext;)V
    .registers 6

    const/4 v1, 0x0

    iget v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mCurrentTarget:I

    if-eq p1, v0, :cond_44

    packed-switch p1, :pswitch_data_46

    iput-object v1, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    :goto_a
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not create a program for image filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2f
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/ImageCombineFilter;->getNativeProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_a

    :pswitch_36
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/ImageCombineFilter;->getShaderProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_a

    :cond_3d
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {p0, v0, p2}, Landroid/filterpacks/imageproc/ImageCombineFilter;->initProgramInputs(Landroid/filterfw/core/Program;Landroid/filterfw/core/FilterContext;)V

    iput p1, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mCurrentTarget:I

    :cond_44
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x2
        :pswitch_2f
        :pswitch_36
    .end packed-switch
.end method
