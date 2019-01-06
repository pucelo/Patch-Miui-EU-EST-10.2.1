.class public Landroid/filterfw/core/SimpleScheduler;
.super Landroid/filterfw/core/Scheduler;
.source "SimpleScheduler.java"


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterGraph;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/filterfw/core/Scheduler;-><init>(Landroid/filterfw/core/FilterGraph;)V

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 1

    return-void
.end method

.method public scheduleNextNode()Landroid/filterfw/core/Filter;
    .registers 4

    invoke-virtual {p0}, Landroid/filterfw/core/SimpleScheduler;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FilterGraph;->getFilters()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Filter;

    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->canProcess()Z

    move-result v2

    if-eqz v2, :cond_c

    return-object v0

    :cond_1f
    const/4 v2, 0x0

    return-object v2
.end method
