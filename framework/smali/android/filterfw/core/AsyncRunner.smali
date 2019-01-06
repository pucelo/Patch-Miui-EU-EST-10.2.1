.class public Landroid/filterfw/core/AsyncRunner;
.super Landroid/filterfw/core/GraphRunner;
.source "AsyncRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;,
        Landroid/filterfw/core/AsyncRunner$RunnerResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncRunner"


# instance fields
.field private isProcessing:Z

.field private mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

.field private mException:Ljava/lang/Exception;

.field private mLogVerbose:Z

.field private mRunTask:Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

.field private mRunner:Landroid/filterfw/core/SyncRunner;

.field private mSchedulerClass:Ljava/lang/Class;


# direct methods
.method static synthetic -get0(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;
    .registers 2

    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    return-object v0
.end method

.method static synthetic -get1(Landroid/filterfw/core/AsyncRunner;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z

    return v0
.end method

.method static synthetic -get2(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/SyncRunner;
    .registers 2

    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/filterfw/core/AsyncRunner;Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/filterfw/core/AsyncRunner;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/filterfw/core/AsyncRunner;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/filterfw/core/AsyncRunner;->setRunning(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/filterfw/core/FilterContext;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/filterfw/core/GraphRunner;-><init>(Landroid/filterfw/core/FilterContext;)V

    const-class v0, Landroid/filterfw/core/SimpleScheduler;

    iput-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mSchedulerClass:Ljava/lang/Class;

    const-string/jumbo v0, "AsyncRunner"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z

    return-void
.end method

.method public constructor <init>(Landroid/filterfw/core/FilterContext;Ljava/lang/Class;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/filterfw/core/GraphRunner;-><init>(Landroid/filterfw/core/FilterContext;)V

    iput-object p2, p0, Landroid/filterfw/core/AsyncRunner;->mSchedulerClass:Ljava/lang/Class;

    const-string/jumbo v0, "AsyncRunner"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z

    return-void
.end method

.method private declared-synchronized setException(Ljava/lang/Exception;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/filterfw/core/AsyncRunner;->mException:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setRunning(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Landroid/filterfw/core/AsyncRunner;->isProcessing:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot close graph while it is running!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_13
    :try_start_13
    iget-boolean v0, p0, Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z

    if-eqz v0, :cond_20

    const-string/jumbo v0, "AsyncRunner"

    const-string/jumbo v1, "Closing filters."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/SyncRunner;->close()V
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_10

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getError()Ljava/lang/Exception;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mException:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGraph()Landroid/filterfw/core/FilterGraph;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;

    if-eqz v1, :cond_b

    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/SyncRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public declared-synchronized isRunning()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/filterfw/core/AsyncRunner;->isProcessing:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "AsyncRunner"

    const-string/jumbo v1, "Running graph."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/filterfw/core/AsyncRunner;->setException(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Graph is already running!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_24
    :try_start_24
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;

    if-nez v0, :cond_31

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot run before a graph is set!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    new-instance v0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;-><init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;)V

    iput-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunTask:Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/filterfw/core/AsyncRunner;->setRunning(Z)V

    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunTask:Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/filterfw/core/SyncRunner;

    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_4d
    .catchall {:try_start_24 .. :try_end_4d} :catchall_21

    monitor-exit p0

    return-void
.end method

.method public setDoneCallback(Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;)V
    .registers 2

    iput-object p1, p0, Landroid/filterfw/core/AsyncRunner;->mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    return-void
.end method

.method public declared-synchronized setGraph(Landroid/filterfw/core/FilterGraph;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Graph is already running!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_13
    :try_start_13
    new-instance v0, Landroid/filterfw/core/SyncRunner;

    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner;->mSchedulerClass:Ljava/lang/Class;

    invoke-direct {v0, v1, p1, v2}, Landroid/filterfw/core/SyncRunner;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FilterGraph;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_10

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stop()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunTask:Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunTask:Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

    invoke-virtual {v0}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->isCancelled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "AsyncRunner"

    const-string/jumbo v1, "Stopping graph."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunTask:Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->cancel(Z)Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method
