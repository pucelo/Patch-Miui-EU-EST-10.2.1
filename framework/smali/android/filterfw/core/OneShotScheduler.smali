.class public Landroid/filterfw/core/OneShotScheduler;
.super Landroid/filterfw/core/RoundRobinScheduler;
.source "OneShotScheduler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OneShotScheduler"


# instance fields
.field private final mLogVerbose:Z

.field private scheduled:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterGraph;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/filterfw/core/RoundRobinScheduler;-><init>(Landroid/filterfw/core/FilterGraph;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/OneShotScheduler;->scheduled:Ljava/util/HashMap;

    const-string/jumbo v0, "OneShotScheduler"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterfw/core/OneShotScheduler;->mLogVerbose:Z

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    invoke-super {p0}, Landroid/filterfw/core/RoundRobinScheduler;->reset()V

    iget-object v0, p0, Landroid/filterfw/core/OneShotScheduler;->scheduled:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public scheduleNextNode()Landroid/filterfw/core/Filter;
    .registers 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    :cond_2
    :goto_2
    invoke-super {p0}, Landroid/filterfw/core/RoundRobinScheduler;->scheduleNextNode()Landroid/filterfw/core/Filter;

    move-result-object v0

    if-nez v0, :cond_16

    iget-boolean v2, p0, Landroid/filterfw/core/OneShotScheduler;->mLogVerbose:Z

    if-eqz v2, :cond_15

    const-string/jumbo v2, "OneShotScheduler"

    const-string/jumbo v3, "No filters available to run."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-object v4

    :cond_16
    iget-object v2, p0, Landroid/filterfw/core/OneShotScheduler;->scheduled:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getNumberOfConnectedInputs()I

    move-result v2

    if-nez v2, :cond_36

    iget-object v2, p0, Landroid/filterfw/core/OneShotScheduler;->scheduled:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    iget-boolean v2, p0, Landroid/filterfw/core/OneShotScheduler;->mLogVerbose:Z

    if-eqz v2, :cond_67

    const-string/jumbo v2, "OneShotScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Scheduling filter \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getFilterClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    return-object v0

    :cond_68
    if-ne v1, v0, :cond_78

    iget-boolean v2, p0, Landroid/filterfw/core/OneShotScheduler;->mLogVerbose:Z

    if-eqz v2, :cond_77

    const-string/jumbo v2, "OneShotScheduler"

    const-string/jumbo v3, "One pass through graph completed."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    return-object v4

    :cond_78
    if-nez v1, :cond_2

    move-object v1, v0

    goto :goto_2
.end method
