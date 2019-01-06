.class public Landroid/filterfw/core/StreamPort;
.super Landroid/filterfw/core/InputPort;
.source "StreamPort.java"


# instance fields
.field private mFrame:Landroid/filterfw/core/Frame;

.field private mPersistent:Z


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/InputPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized assignFrame(Landroid/filterfw/core/Frame;Z)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/filterfw/core/StreamPort;->assertPortIsOpen()V

    invoke-virtual {p0, p1, p2}, Landroid/filterfw/core/StreamPort;->checkFrameType(Landroid/filterfw/core/Frame;Z)V

    if-eqz p2, :cond_21

    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    :cond_12
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    move-result-object v0

    iput-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->markReadOnly()V

    iput-boolean p2, p0, Landroid/filterfw/core/StreamPort;->mPersistent:Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_46

    monitor-exit p0

    return-void

    :cond_21
    :try_start_21
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attempting to push more than one frame on port: "

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
    :try_end_46
    .catchall {:try_start_21 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clear()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    iput-object v1, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    :cond_c
    return-void
.end method

.method public declared-synchronized hasFrame()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pullFrame()Landroid/filterfw/core/Frame;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    if-nez v1, :cond_29

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No frame available to pull on port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_29
    :try_start_29
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    iget-boolean v1, p0, Landroid/filterfw/core/StreamPort;->mPersistent:Z

    if-eqz v1, :cond_36

    iget-object v1, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_26

    :goto_34
    monitor-exit p0

    return-object v0

    :cond_36
    const/4 v1, 0x0

    :try_start_37
    iput-object v1, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_26

    goto :goto_34
.end method

.method public pushFrame(Landroid/filterfw/core/Frame;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/StreamPort;->assignFrame(Landroid/filterfw/core/Frame;Z)V

    return-void
.end method

.method public setFrame(Landroid/filterfw/core/Frame;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/StreamPort;->assignFrame(Landroid/filterfw/core/Frame;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "input "

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
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/filterfw/core/StreamPort;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/StreamPort;->checkFrameManager(Landroid/filterfw/core/Frame;Landroid/filterfw/core/FilterContext;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
