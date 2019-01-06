.class public abstract Landroid/filterfw/core/InputPort;
.super Landroid/filterfw/core/FilterPort;
.source "InputPort.java"


# instance fields
.field protected mSourcePort:Landroid/filterfw/core/OutputPort;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/FilterPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acceptsFrame()Z
    .registers 2

    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->hasFrame()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->close()V

    :cond_11
    invoke-super {p0}, Landroid/filterfw/core/FilterPort;->close()V

    return-void
.end method

.method public filterMustClose()Z
    .registers 2

    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->isOpen()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->hasFrame()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getSourceFilter()Landroid/filterfw/core/Filter;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->getFilter()Landroid/filterfw/core/Filter;

    move-result-object v0

    goto :goto_5
.end method

.method public getSourceFormat()Landroid/filterfw/core/FrameFormat;
    .registers 2

    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->getPortFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->getPortFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    goto :goto_a
.end method

.method public getSourcePort()Landroid/filterfw/core/OutputPort;
    .registers 2

    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isReady()Z
    .registers 2

    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->hasFrame()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->isBlocking()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public open()V
    .registers 2

    invoke-super {p0}, Landroid/filterfw/core/FilterPort;->open()V

    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->isOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->open()V

    :cond_16
    return-void
.end method

.method public setSourcePort(Landroid/filterfw/core/OutputPort;)V
    .registers 5

    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " already connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iput-object p1, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    return-void
.end method

.method public abstract transfer(Landroid/filterfw/core/FilterContext;)V
.end method
