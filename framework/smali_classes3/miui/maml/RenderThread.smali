.class public Lmiui/maml/RenderThread;
.super Ljava/lang/Thread;
.source "RenderThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/RenderThread$CommandThreadHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RenderThread"

.field private static sGlobalThread:Lmiui/maml/RenderThread;

.field private static sGlobalThreadLock:Ljava/lang/Object;


# instance fields
.field private mCmdHanlder:Lmiui/maml/RenderThread$CommandThreadHandler;

.field private mCmdThread:Landroid/os/HandlerThread;

.field private mPaused:Z

.field private mRendererControllerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/RendererController;",
            ">;"
        }
    .end annotation
.end field

.field private mResumeSignal:Ljava/lang/Object;

.field private mSignaled:Z

.field private mSleepSignal:Ljava/lang/Object;

.field private mStarted:Z

.field private mStop:Z


# direct methods
.method static synthetic -wrap0(Lmiui/maml/RenderThread;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/RenderThread;->setPausedImpl(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string/jumbo v0, "MAML RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mPaused:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-direct {p0}, Lmiui/maml/RenderThread;->initCmdThread()V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/RendererController;)V
    .registers 3

    const-string/jumbo v0, "MAML RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mPaused:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lmiui/maml/RenderThread;->addRendererController(Lmiui/maml/RendererController;)V

    invoke-direct {p0}, Lmiui/maml/RenderThread;->initCmdThread()V

    return-void
.end method

.method private doFinish()V
    .registers 6

    iget-object v4, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_26

    move-result v3

    if-nez v3, :cond_d

    monitor-exit v4

    return-void

    :cond_d
    :try_start_d
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_24

    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    invoke-virtual {v1}, Lmiui/maml/RendererController;->finish()V
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_26

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_24
    monitor-exit v4

    return-void

    :catchall_26
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private doInit()V
    .registers 6

    iget-object v4, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_29

    move-result v3

    if-nez v3, :cond_d

    monitor-exit v4

    return-void

    :cond_d
    :try_start_d
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_27

    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    invoke-virtual {v1}, Lmiui/maml/RendererController;->init()V

    invoke-virtual {v1}, Lmiui/maml/RendererController;->requestUpdate()V
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_29

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_27
    monitor-exit v4

    return-void

    :catchall_29
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private doPause()V
    .registers 6

    iget-object v4, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_26

    move-result v3

    if-nez v3, :cond_d

    monitor-exit v4

    return-void

    :cond_d
    :try_start_d
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_24

    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    invoke-virtual {v1}, Lmiui/maml/RendererController;->pause()V
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_26

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_24
    monitor-exit v4

    return-void

    :catchall_26
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private doResume()V
    .registers 6

    iget-object v4, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_26

    move-result v3

    if-nez v3, :cond_d

    monitor-exit v4

    return-void

    :cond_d
    :try_start_d
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_24

    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    invoke-virtual {v1}, Lmiui/maml/RendererController;->resume()V
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_26

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_24
    monitor-exit v4

    return-void

    :catchall_26
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static globalThread()Lmiui/maml/RenderThread;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/maml/RenderThread;->globalThread(Z)Lmiui/maml/RenderThread;

    move-result-object v0

    return-object v0
.end method

.method public static globalThread(Z)Lmiui/maml/RenderThread;
    .registers 4

    sget-object v2, Lmiui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    if-nez v1, :cond_e

    new-instance v1, Lmiui/maml/RenderThread;

    invoke-direct {v1}, Lmiui/maml/RenderThread;-><init>()V

    sput-object v1, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    :cond_e
    if-eqz p0, :cond_1f

    sget-object v1, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    invoke-virtual {v1}, Lmiui/maml/RenderThread;->isStarted()Z
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_23

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1f

    :try_start_1a
    sget-object v1, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    invoke-virtual {v1}, Lmiui/maml/RenderThread;->start()V
    :try_end_1f
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1a .. :try_end_1f} :catch_26
    .catchall {:try_start_1a .. :try_end_1f} :catchall_23

    :cond_1f
    :goto_1f
    :try_start_1f
    sget-object v1, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_23

    monitor-exit v2

    return-object v1

    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_26
    move-exception v0

    goto :goto_1f
.end method

.method public static globalThreadStop()V
    .registers 2

    sget-object v1, Lmiui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_f

    sget-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->setStop()V

    const/4 v0, 0x0

    sput-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initCmdThread()V
    .registers 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "cmd"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lmiui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lmiui/maml/RenderThread$CommandThreadHandler;

    iget-object v1, p0, Lmiui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiui/maml/RenderThread$CommandThreadHandler;-><init>(Lmiui/maml/RenderThread;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mCmdHanlder:Lmiui/maml/RenderThread$CommandThreadHandler;

    return-void
.end method

.method private setPausedImpl(Z)V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iput-boolean p1, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-nez p1, :cond_11

    iget-object v0, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_16

    :cond_11
    monitor-exit v1

    invoke-virtual {p0}, Lmiui/maml/RenderThread;->signal()V

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final waitSleep(J)V
    .registers 8

    iget-boolean v1, p0, Lmiui/maml/RenderThread;->mSignaled:Z

    if-nez v1, :cond_a

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_b

    :cond_a
    return-void

    :cond_b
    iget-object v2, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    monitor-enter v2

    :try_start_e
    iget-boolean v1, p0, Lmiui/maml/RenderThread;->mSignaled:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_1e

    if-nez v1, :cond_17

    :try_start_12
    iget-object v1, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_17} :catch_19
    .catchall {:try_start_12 .. :try_end_17} :catchall_1e

    :cond_17
    :goto_17
    monitor-exit v2

    return-void

    :catch_19
    move-exception v0

    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_17

    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private waiteForResume()V
    .registers 3

    :try_start_0
    iget-object v1, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method


# virtual methods
.method public addRendererController(Lmiui/maml/RendererController;)V
    .registers 5

    iget-object v1, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "RenderThread"

    const-string/jumbo v2, "addRendererController: RendererController already exists"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_24

    monitor-exit v1

    return-void

    :cond_16
    :try_start_16
    invoke-virtual {p1, p0}, Lmiui/maml/RendererController;->setRenderThread(Lmiui/maml/RenderThread;)V

    iget-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_24

    monitor-exit v1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/RenderThread;->setPaused(Z)V

    return-void

    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isStarted()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/RenderThread;->mStarted:Z

    return v0
.end method

.method public removeRendererController(Lmiui/maml/RendererController;)V
    .registers 4

    iget-object v1, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/maml/RendererController;->setRenderThread(Lmiui/maml/RenderThread;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .registers 16

    const-string/jumbo v12, "RenderThread"

    const-string/jumbo v13, "RenderThread started"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    invoke-direct {p0}, Lmiui/maml/RenderThread;->doInit()V

    const/4 v12, 0x1

    iput-boolean v12, p0, Lmiui/maml/RenderThread;->mStarted:Z

    :goto_f
    iget-boolean v12, p0, Lmiui/maml/RenderThread;->mStop:Z

    if-nez v12, :cond_3e

    iget-boolean v12, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-eqz v12, :cond_3a

    iget-object v13, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    monitor-enter v13
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1a} :catch_53
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_1a} :catch_8e

    :try_start_1a
    iget-boolean v12, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-eqz v12, :cond_39

    invoke-direct {p0}, Lmiui/maml/RenderThread;->doPause()V

    const-string/jumbo v12, "RenderThread"

    const-string/jumbo v14, "RenderThread paused, waiting for signal"

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lmiui/maml/RenderThread;->waiteForResume()V

    const-string/jumbo v12, "RenderThread"

    const-string/jumbo v14, "RenderThread resumed"

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lmiui/maml/RenderThread;->doResume()V
    :try_end_39
    .catchall {:try_start_1a .. :try_end_39} :catchall_50

    :cond_39
    :try_start_39
    monitor-exit v13

    :cond_3a
    iget-boolean v12, p0, Lmiui/maml/RenderThread;->mStop:Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_53
    .catch Ljava/lang/OutOfMemoryError; {:try_start_39 .. :try_end_3c} :catch_8e

    if-eqz v12, :cond_62

    :cond_3e
    :goto_3e
    invoke-direct {p0}, Lmiui/maml/RenderThread;->doFinish()V

    iget-object v12, p0, Lmiui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->quit()Z

    const-string/jumbo v12, "RenderThread"

    const-string/jumbo v13, "RenderThread stopped"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_50
    move-exception v12

    :try_start_51
    monitor-exit v13

    throw v12
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_53} :catch_53
    .catch Ljava/lang/OutOfMemoryError; {:try_start_51 .. :try_end_53} :catch_8e

    :catch_53
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v12, "RenderThread"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    :cond_62
    :try_start_62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide v10, 0x7fffffffffffffffL

    iget-object v13, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v13
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6e} :catch_53
    .catch Ljava/lang/OutOfMemoryError; {:try_start_62 .. :try_end_6e} :catch_8e

    :try_start_6e
    iget-object v12, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v7, 0x0

    :goto_76
    if-ge v7, v0, :cond_7c

    iget-boolean v12, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-eqz v12, :cond_9d

    :cond_7c
    if-eqz v0, :cond_80

    if-eqz v1, :cond_ca

    :cond_80
    const/4 v12, 0x1

    iput-boolean v12, p0, Lmiui/maml/RenderThread;->mPaused:Z

    const-string/jumbo v12, "RenderThread"

    const-string/jumbo v14, "All controllers paused."

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_6e .. :try_end_8c} :catchall_d3

    :try_start_8c
    monitor-exit v13
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8d} :catch_53
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8c .. :try_end_8d} :catch_8e

    goto :goto_f

    :catch_8e
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string/jumbo v12, "RenderThread"

    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    :cond_9d
    :try_start_9d
    iget-object v12, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    invoke-virtual {v2}, Lmiui/maml/RendererController;->isSelfPaused()Z

    move-result v12

    if-eqz v12, :cond_b6

    invoke-virtual {v2}, Lmiui/maml/RendererController;->hasRunnable()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_b6

    :cond_b3
    :goto_b3
    add-int/lit8 v7, v7, 0x1

    goto :goto_76

    :cond_b6
    const/4 v1, 0x0

    invoke-virtual {v2}, Lmiui/maml/RendererController;->hasInited()Z

    move-result v12

    if-nez v12, :cond_c0

    invoke-virtual {v2}, Lmiui/maml/RendererController;->init()V

    :cond_c0
    invoke-virtual {v2, v4, v5}, Lmiui/maml/RendererController;->updateIfNeeded(J)J
    :try_end_c3
    .catchall {:try_start_9d .. :try_end_c3} :catchall_d3

    move-result-wide v8

    cmp-long v12, v8, v10

    if-gez v12, :cond_b3

    move-wide v10, v8

    goto :goto_b3

    :cond_ca
    :try_start_ca
    monitor-exit v13

    invoke-direct {p0, v10, v11}, Lmiui/maml/RenderThread;->waitSleep(J)V

    const/4 v12, 0x0

    iput-boolean v12, p0, Lmiui/maml/RenderThread;->mSignaled:Z

    goto/16 :goto_f

    :catchall_d3
    move-exception v12

    monitor-exit v13

    throw v12
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d6} :catch_53
    .catch Ljava/lang/OutOfMemoryError; {:try_start_ca .. :try_end_d6} :catch_8e
.end method

.method public setPaused(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/RenderThread;->mCmdHanlder:Lmiui/maml/RenderThread$CommandThreadHandler;

    invoke-virtual {v0, p1}, Lmiui/maml/RenderThread$CommandThreadHandler;->setPause(Z)V

    return-void
.end method

.method public setStop()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mStop:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/RenderThread;->setPaused(Z)V

    return-void
.end method

.method public signal()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/RenderThread;->mSignaled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mSignaled:Z

    iget-object v0, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method
