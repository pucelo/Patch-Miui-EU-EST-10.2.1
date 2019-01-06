.class public Landroid/metrics/MetricsReader;
.super Ljava/lang/Object;
.source "MetricsReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/metrics/MetricsReader$Event;,
        Landroid/metrics/MetricsReader$LogReader;
    }
.end annotation


# instance fields
.field private LOGTAGS:[I

.field private mCheckpointTag:I

.field private mPendingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field

.field private mReader:Landroid/metrics/MetricsReader$LogReader;

.field private mSeenQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x80004

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Landroid/metrics/MetricsReader;->LOGTAGS:[I

    new-instance v0, Landroid/metrics/MetricsReader$LogReader;

    invoke-direct {v0}, Landroid/metrics/MetricsReader$LogReader;-><init>()V

    iput-object v0, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    const/4 v0, -0x1

    iput v0, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    return-void
.end method


# virtual methods
.method public checkpoint()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    iget-object v0, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    iget v1, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    invoke-virtual {v0, v1}, Landroid/metrics/MetricsReader$LogReader;->writeCheckpoint(I)V

    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Landroid/metrics/LogMaker;
    .registers 3

    iget-object v1, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/metrics/LogMaker;

    if-eqz v0, :cond_f

    iget-object v1, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_f
    return-object v0
.end method

.method public read(J)V
    .registers 14

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    iget-object v9, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    iget-object v10, p0, Landroid/metrics/MetricsReader;->LOGTAGS:[I

    invoke-virtual {v9, v10, p1, p2, v7}, Landroid/metrics/MetricsReader$LogReader;->readEvents([IJLjava/util/Collection;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_64

    :goto_c
    iget-object v9, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->clear()V

    iget-object v9, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->clear()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_76

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/metrics/MetricsReader$Event;

    invoke-virtual {v2}, Landroid/metrics/MetricsReader$Event;->getTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/metrics/MetricsReader$Event;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v9, v0, [Ljava/lang/Object;

    if-eqz v9, :cond_69

    move-object v8, v0

    check-cast v8, [Ljava/lang/Object;

    :goto_35
    new-instance v9, Landroid/metrics/LogMaker;

    invoke-direct {v9, v8}, Landroid/metrics/LogMaker;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v9, v4, v5}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    move-result-object v9

    invoke-virtual {v2}, Landroid/metrics/MetricsReader$Event;->getUid()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/metrics/LogMaker;->setUid(I)Landroid/metrics/LogMaker;

    move-result-object v9

    invoke-virtual {v2}, Landroid/metrics/MetricsReader$Event;->getProcessId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/metrics/LogMaker;->setProcessId(I)Landroid/metrics/LogMaker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/metrics/LogMaker;->getCategory()I

    move-result v9

    const/16 v10, 0x398

    if-ne v9, v10, :cond_70

    invoke-virtual {v6}, Landroid/metrics/LogMaker;->getSubtype()I

    move-result v9

    iget v10, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    if-ne v9, v10, :cond_1a

    iget-object v9, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->clear()V

    goto :goto_1a

    :catch_64
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :cond_69
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    goto :goto_35

    :cond_70
    iget-object v9, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v9, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_76
    return-void
.end method

.method public reset()V
    .registers 4

    iget-object v1, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    iget-object v2, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v1, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    const/4 v1, -0x1

    iput v1, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    iget-object v1, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    iput-object v1, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    iput-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    return-void
.end method

.method public setLogReader(Landroid/metrics/MetricsReader$LogReader;)V
    .registers 2

    iput-object p1, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    return-void
.end method
