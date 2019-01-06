.class public Landroid/filterfw/core/FieldPort;
.super Landroid/filterfw/core/InputPort;
.source "FieldPort.java"


# instance fields
.field protected mField:Ljava/lang/reflect/Field;

.field protected mHasFrame:Z

.field protected mValue:Ljava/lang/Object;

.field protected mValueWaiting:Z


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/InputPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/FieldPort;->mValueWaiting:Z

    iput-object p3, p0, Landroid/filterfw/core/FieldPort;->mField:Ljava/lang/reflect/Field;

    iput-boolean p4, p0, Landroid/filterfw/core/FieldPort;->mHasFrame:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized acceptsFrame()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/filterfw/core/FieldPort;->mValueWaiting:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_7

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clear()V
    .registers 1

    return-void
.end method

.method public getTarget()Ljava/lang/Object;
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/filterfw/core/FieldPort;->mField:Ljava/lang/reflect/Field;

    iget-object v2, p0, Landroid/filterfw/core/FieldPort;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    :catch_9
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public declared-synchronized hasFrame()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/filterfw/core/FieldPort;->mHasFrame:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pullFrame()Landroid/filterfw/core/Frame;
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot pull frame on "

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
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pushFrame(Landroid/filterfw/core/Frame;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/FieldPort;->setFieldFrame(Landroid/filterfw/core/Frame;Z)V

    return-void
.end method

.method protected declared-synchronized setFieldFrame(Landroid/filterfw/core/Frame;Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/filterfw/core/FieldPort;->assertPortIsOpen()V

    invoke-virtual {p0, p1, p2}, Landroid/filterfw/core/FieldPort;->checkFrameType(Landroid/filterfw/core/Frame;Z)V

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1b

    iget-object v1, p0, Landroid/filterfw/core/FieldPort;->mValue:Ljava/lang/Object;

    if-eqz v1, :cond_1b

    :goto_11
    iput-object v0, p0, Landroid/filterfw/core/FieldPort;->mValue:Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/filterfw/core/FieldPort;->mValueWaiting:Z

    :cond_16
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/filterfw/core/FieldPort;->mHasFrame:Z
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_26

    monitor-exit p0

    return-void

    :cond_1b
    :try_start_1b
    iget-object v1, p0, Landroid/filterfw/core/FieldPort;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_26

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_16

    goto :goto_11

    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setFrame(Landroid/filterfw/core/Frame;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/FieldPort;->setFieldFrame(Landroid/filterfw/core/Frame;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/filterfw/core/InputPort;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized transfer(Landroid/filterfw/core/FilterContext;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Landroid/filterfw/core/FieldPort;->mValueWaiting:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_44

    if-eqz v1, :cond_1a

    :try_start_5
    iget-object v1, p0, Landroid/filterfw/core/FieldPort;->mField:Ljava/lang/reflect/Field;

    iget-object v2, p0, Landroid/filterfw/core/FieldPort;->mFilter:Landroid/filterfw/core/Filter;

    iget-object v3, p0, Landroid/filterfw/core/FieldPort;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_e} :catch_1c
    .catchall {:try_start_5 .. :try_end_e} :catchall_44

    const/4 v1, 0x0

    :try_start_f
    iput-boolean v1, p0, Landroid/filterfw/core/FieldPort;->mValueWaiting:Z

    if-eqz p1, :cond_1a

    iget-object v1, p0, Landroid/filterfw/core/FieldPort;->mFilter:Landroid/filterfw/core/Filter;

    iget-object v2, p0, Landroid/filterfw/core/FieldPort;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/filterfw/core/Filter;->notifyFieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_44

    :cond_1a
    monitor-exit p0

    return-void

    :catch_1c
    move-exception v0

    :try_start_1d
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Access to field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/core/FieldPort;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' was denied!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_44
    .catchall {:try_start_1d .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v1

    monitor-exit p0

    throw v1
.end method
