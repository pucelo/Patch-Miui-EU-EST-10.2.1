.class public Lcom/android/internal/midi/EventScheduler;
.super Ljava/lang/Object;
.source "EventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/midi/EventScheduler$FastEventQueue;,
        Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    }
.end annotation


# static fields
.field private static final NANOS_PER_MILLI:J = 0xf4240L


# instance fields
.field private mClosed:Z

.field private volatile mEventBuffer:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/midi/EventScheduler$FastEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

.field private final mLock:Ljava/lang/Object;

.field private mMaxPoolSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/internal/midi/EventScheduler;->mMaxPoolSize:I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    return-void
.end method

.method private removeNextEventLocked(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .registers 8

    iget-object v2, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    iget-object v2, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    invoke-virtual {v1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->remove()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .registers 10

    iget-object v4, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-virtual {p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    if-nez v0, :cond_50

    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_43

    const-wide v2, 0x7fffffffffffffffL

    :goto_22
    new-instance v0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;-><init>(Lcom/android/internal/midi/EventScheduler;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-virtual {p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->getTimestamp()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-gez v1, :cond_41

    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_54

    :cond_41
    :goto_41
    monitor-exit v4

    return-void

    :cond_43
    :try_start_43
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_22

    :cond_50
    invoke-virtual {v0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_54

    goto :goto_41

    :catchall_54
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method public addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;-><init>(Lcom/android/internal/midi/EventScheduler;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v0}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/android/internal/midi/EventScheduler;->mMaxPoolSize:I

    if-ge v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    goto :goto_b
.end method

.method public close()V
    .registers 3

    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/internal/midi/EventScheduler;->mClosed:Z

    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected flush()V
    .registers 2

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    return-void
.end method

.method public getNextEvent(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .registers 8

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-gtz v1, :cond_20

    invoke-direct {p0, v2, v3}, Lcom/android/internal/midi/EventScheduler;->removeNextEventLocked(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_22

    move-result-object v0

    :cond_20
    monitor-exit v4

    return-object v0

    :catchall_22
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method public removeEventfromPool()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_14

    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->remove()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method public waitNextEvent()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/midi/EventScheduler;->mClosed:Z

    if-nez v3, :cond_35

    const-wide/32 v6, 0x7fffffff

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4c

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v10

    if-gtz v3, :cond_37

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/midi/EventScheduler;->removeNextEventLocked(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_56

    move-result-object v2

    :cond_35
    monitor-exit v12

    return-object v2

    :cond_37
    sub-long v8, v4, v10

    const-wide/32 v14, 0xf4240

    :try_start_3c
    div-long v14, v8, v14

    const-wide/16 v16, 0x1

    add-long v6, v16, v14

    const-wide/32 v14, 0x7fffffff

    cmp-long v3, v6, v14

    if-lez v3, :cond_4c

    const-wide/32 v6, 0x7fffffff

    :cond_4c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    long-to-int v13, v6

    int-to-long v14, v13

    invoke-virtual {v3, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_55
    .catchall {:try_start_3c .. :try_end_55} :catchall_56

    goto :goto_6

    :catchall_56
    move-exception v3

    monitor-exit v12

    throw v3
.end method
