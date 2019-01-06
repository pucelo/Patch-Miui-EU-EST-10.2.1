.class public Landroid/os/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# instance fields
.field private volatile mCondition:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/os/ConditionVariable;->mCondition:Z

    return-void
.end method


# virtual methods
.method public block()V
    .registers 3

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v1, p0, Landroid/os/ConditionVariable;->mCondition:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v1, :cond_b

    :try_start_5
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    goto :goto_1

    :catch_9
    move-exception v0

    goto :goto_1

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public block(J)Z
    .registers 12

    const-wide/16 v6, 0x0

    cmp-long v1, p1, v6

    if-eqz v1, :cond_28

    monitor-enter p0

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v2, v4, p1

    :goto_d
    iget-boolean v1, p0, Landroid/os/ConditionVariable;->mCondition:Z
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_25

    if-nez v1, :cond_21

    cmp-long v1, v4, v2

    if-gez v1, :cond_21

    sub-long v6, v2, v4

    :try_start_17
    invoke-virtual {p0, v6, v7}, Landroid/os/ConditionVariable;->wait(J)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1f
    .catchall {:try_start_17 .. :try_end_1a} :catchall_25

    :goto_1a
    :try_start_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_d

    :catch_1f
    move-exception v0

    goto :goto_1a

    :cond_21
    iget-boolean v1, p0, Landroid/os/ConditionVariable;->mCondition:Z
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_25

    monitor-exit p0

    return v1

    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_28
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    const/4 v1, 0x1

    return v1
.end method

.method public close()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public open()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/ConditionVariable;->mCondition:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->notifyAll()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1
.end method
