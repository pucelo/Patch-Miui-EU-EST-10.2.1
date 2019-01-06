.class public Lmiui/maml/RendererController;
.super Ljava/lang/Object;
.source "RendererController.java"

# interfaces
.implements Lmiui/maml/FramerateTokenList$FramerateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/RendererController$EmptyListener;,
        Lmiui/maml/RendererController$IRenderable;,
        Lmiui/maml/RendererController$ISelfUpdateRenderable;,
        Lmiui/maml/RendererController$Listener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererController"

.field private static final MAX_MSG_COUNT:I = 0x3


# instance fields
.field private mCurFramerate:F

.field private mFrameTime:J

.field private mFramerateControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/FramerateController;",
            ">;"
        }
    .end annotation
.end field

.field private mFramerateTokenList:Lmiui/maml/FramerateTokenList;

.field private mInited:Z

.field private mLastUpdateSystemTime:J

.field private mListener:Lmiui/maml/RendererController$Listener;

.field private mLock:[B

.field private mMsgLock:Ljava/lang/Object;

.field private mMsgQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPaused:Z

.field private mPendingRender:Z

.field private mReadRunnableQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderThread:Lmiui/maml/RenderThread;

.field private mSelfPaused:Z

.field private mShouldUpdate:Z

.field private mTouchX:F

.field private mTouchY:F

.field private mWriteRunnableQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteRunnableQueueLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    new-instance v0, Lmiui/maml/FramerateTokenList;

    invoke-direct {v0}, Lmiui/maml/FramerateTokenList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/maml/RendererController;->mLock:[B

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/maml/RendererController;->mFrameTime:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    iput v2, p0, Lmiui/maml/RendererController;->mTouchX:F

    iput v2, p0, Lmiui/maml/RendererController;->mTouchY:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    new-instance v0, Lmiui/maml/FramerateTokenList;

    invoke-direct {v0, p0}, Lmiui/maml/FramerateTokenList;-><init>(Lmiui/maml/FramerateTokenList$FramerateChangeListener;)V

    iput-object v0, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    return-void
.end method

.method public constructor <init>(Lmiui/maml/RendererController$Listener;)V
    .registers 2

    invoke-direct {p0}, Lmiui/maml/RendererController;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/maml/RendererController;->setListener(Lmiui/maml/RendererController$Listener;)V

    return-void
.end method


# virtual methods
.method public addFramerateController(Lmiui/maml/elements/FramerateController;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;
    .registers 3

    iget-object v0, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    invoke-virtual {v0, p1}, Lmiui/maml/FramerateTokenList;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public final doRender()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->doRender()V

    :cond_c
    return-void
.end method

.method public final doneRender()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    invoke-virtual {p0}, Lmiui/maml/RendererController;->triggerUpdate()V

    return-void
.end method

.method public finish()V
    .registers 5

    iget-object v2, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v2

    :try_start_3
    iget-boolean v1, p0, Lmiui/maml/RendererController;->mInited:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_30

    if-nez v1, :cond_9

    monitor-exit v2

    return-void

    :cond_9
    :try_start_9
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_30

    if-eqz v1, :cond_12

    :try_start_d
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v1}, Lmiui/maml/RendererController$Listener;->finish()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_33
    .catchall {:try_start_d .. :try_end_12} :catchall_30

    :cond_12
    :goto_12
    :try_start_12
    iget-object v3, p0, Lmiui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_30

    :try_start_15
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-eqz v1, :cond_42

    :goto_19
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_42

    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_2d

    goto :goto_19

    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v3

    throw v1
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_33
    move-exception v0

    :try_start_34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_42
    monitor-exit v3

    iget-object v3, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_46
    .catchall {:try_start_34 .. :try_end_46} :catchall_30

    :try_start_46
    iget-object v1, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_56

    :try_start_4b
    monitor-exit v3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/RendererController;->mInited:Z
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_30

    monitor-exit v2

    iget-object v1, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    invoke-virtual {v1}, Lmiui/maml/FramerateTokenList;->clear()V

    return-void

    :catchall_56
    move-exception v1

    :try_start_57
    monitor-exit v3

    throw v1
    :try_end_59
    .catchall {:try_start_57 .. :try_end_59} :catchall_30
.end method

.method public final getMessage()Landroid/view/MotionEvent;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v1, :cond_6

    return-object v0

    :cond_6
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-object v2, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_18

    if-nez v2, :cond_f

    :goto_d
    monitor-exit v1

    return-object v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_18

    goto :goto_d

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final hasInited()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    return v0
.end method

.method public final hasMessage()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v1, :cond_6

    return v0

    :cond_6
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-object v2, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_19

    if-nez v2, :cond_f

    :cond_d
    :goto_d
    monitor-exit v1

    return v0

    :cond_f
    :try_start_f
    iget-object v2, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    move-result v2

    if-lez v2, :cond_d

    const/4 v0, 0x1

    goto :goto_d

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final hasRunnable()Z
    .registers 4

    iget-object v2, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    monitor-exit v2

    return v0

    :catchall_d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public init()V
    .registers 5

    iget-object v2, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v2

    :try_start_3
    iget-boolean v1, p0, Lmiui/maml/RendererController;->mInited:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_26

    if-eqz v1, :cond_9

    monitor-exit v2

    return-void

    :cond_9
    :try_start_9
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_26

    if-eqz v1, :cond_12

    :try_start_d
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v1}, Lmiui/maml/RendererController$Listener;->init()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_17
    .catchall {:try_start_d .. :try_end_12} :catchall_26

    :cond_12
    :goto_12
    const/4 v1, 0x1

    :try_start_13
    iput-boolean v1, p0, Lmiui/maml/RendererController;->mInited:Z
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_26

    monitor-exit v2

    return-void

    :catch_17
    move-exception v0

    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_26

    goto :goto_12

    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final isSelfPaused()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    return v0
.end method

.method public onFrameRateChage(FF)V
    .registers 4

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_8

    invoke-virtual {p0}, Lmiui/maml/RendererController;->triggerUpdate()V

    :cond_8
    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v2, :cond_c

    :try_start_7
    iget-object v2, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v2, p1}, Lmiui/maml/RendererController$Listener;->onHover(Landroid/view/MotionEvent;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_1c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string/jumbo v2, "RendererController"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v2, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v2, :cond_c

    :try_start_7
    iget-object v2, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v2, p1}, Lmiui/maml/RendererController$Listener;->onTouch(Landroid/view/MotionEvent;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_1c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string/jumbo v2, "RendererController"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v2, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public pause()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPaused:Z

    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->pause()V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1d

    :cond_18
    monitor-exit v1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final pendingRender()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    return v0
.end method

.method public postMessage(Landroid/view/MotionEvent;)V
    .registers 9

    const/4 v6, 0x2

    iget-object v4, p0, Lmiui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iget-object v3, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v3, :cond_f

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v6, :cond_1f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v5, p0, Lmiui/maml/RendererController;->mTouchX:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_62

    :cond_1f
    :goto_1f
    iget-object v3, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lmiui/maml/RendererController;->mTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lmiui/maml/RendererController;->mTouchY:F

    :cond_30
    iget-object v3, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v5, 0x3

    if-le v3, v5, :cond_5d

    const/4 v0, 0x0

    iget-object v3, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v6, :cond_40

    move-object v0, v1

    :cond_53
    if-eqz v0, :cond_5d

    iget-object v3, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V
    :try_end_5d
    .catchall {:try_start_4 .. :try_end_5d} :catchall_6d

    :cond_5d
    monitor-exit v4

    invoke-virtual {p0}, Lmiui/maml/RendererController;->triggerUpdate()V

    return-void

    :cond_62
    :try_start_62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v5, p0, Lmiui/maml/RendererController;->mTouchY:F
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_6d

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_30

    goto :goto_1f

    :catchall_6d
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .registers 4

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "postRunnable null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v1, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_20

    :cond_1b
    monitor-exit v1

    invoke-virtual {p0}, Lmiui/maml/RendererController;->requestUpdate()V

    return-void

    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeFramerateController(Lmiui/maml/elements/FramerateController;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final requestUpdate()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    invoke-virtual {p0}, Lmiui/maml/RendererController;->triggerUpdate()V

    return-void
.end method

.method public resume()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_9
    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPaused:Z

    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->resume()V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public runRunnables()V
    .registers 6

    iget-object v4, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v2, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    iget-object v3, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    iput-object v3, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    iput-object v2, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_23

    monitor-exit v4

    iget-object v3, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_26

    iget-object v3, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :catchall_23
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_26
    iget-object v3, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public selfPause()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v1

    :try_start_8
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    iget-boolean v0, p0, Lmiui/maml/RendererController;->mPaused:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->pause()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    :cond_1c
    monitor-exit v1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    return-void

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public selfResume()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v1

    :try_start_9
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    iget-boolean v0, p0, Lmiui/maml/RendererController;->mPaused:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->resume()V
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_28

    :cond_1d
    monitor-exit v1

    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v2}, Lmiui/maml/RenderThread;->setPaused(Z)V

    :cond_27
    return-void

    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setListener(Lmiui/maml/RendererController$Listener;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    return-void
.end method

.method public setRenderThread(Lmiui/maml/RenderThread;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    return-void
.end method

.method public tick(J)V
    .registers 6

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v1, :cond_c

    :try_start_7
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v1, p1, p2}, Lmiui/maml/RendererController$Listener;->tick(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_f

    :cond_c
    :goto_c
    iput-wide p1, p0, Lmiui/maml/RendererController;->mLastUpdateSystemTime:J

    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public triggerUpdate()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->signal()V

    :cond_9
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->triggerUpdate()V

    :cond_12
    return-void
.end method

.method public update(J)J
    .registers 8

    invoke-virtual {p0, p1, p2}, Lmiui/maml/RendererController;->updateFramerate(J)J

    move-result-wide v2

    invoke-virtual {p0}, Lmiui/maml/RendererController;->hasRunnable()Z

    move-result v1

    iget-boolean v4, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    if-eqz v4, :cond_e

    if-eqz v1, :cond_32

    :cond_e
    invoke-virtual {p0}, Lmiui/maml/RendererController;->runRunnables()V

    invoke-virtual {p0}, Lmiui/maml/RendererController;->getMessage()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {p0, v0}, Lmiui/maml/RendererController;->onTouch(Landroid/view/MotionEvent;)V

    :cond_20
    :goto_20
    invoke-virtual {p0, p1, p2}, Lmiui/maml/RendererController;->tick(J)V

    invoke-virtual {p0}, Lmiui/maml/RendererController;->doRender()V

    iget-boolean v4, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    if-nez v4, :cond_30

    invoke-virtual {p0}, Lmiui/maml/RendererController;->hasMessage()Z

    move-result v4

    if-eqz v4, :cond_32

    :cond_30
    const-wide/16 v2, 0x0

    :cond_32
    return-wide v2

    :cond_33
    invoke-virtual {p0, v0}, Lmiui/maml/RendererController;->onHover(Landroid/view/MotionEvent;)V

    goto :goto_20
.end method

.method public final updateFramerate(J)J
    .registers 16

    const/high16 v10, 0x3f800000    # 1.0f

    const-wide v8, 0x7fffffffffffffffL

    iget-object v5, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v0, :cond_24

    iget-object v5, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/elements/FramerateController;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/FramerateController;->updateFramerate(J)J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-gez v5, :cond_21

    move-wide v8, v6

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_24
    iget-object v5, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    invoke-virtual {v5}, Lmiui/maml/FramerateTokenList;->getFramerate()F

    move-result v1

    iget v5, p0, Lmiui/maml/RendererController;->mCurFramerate:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_4a

    iget v5, p0, Lmiui/maml/RendererController;->mCurFramerate:F

    cmpl-float v5, v5, v10

    if-ltz v5, :cond_3d

    cmpg-float v5, v1, v10

    if-gez v5, :cond_3d

    invoke-virtual {p0}, Lmiui/maml/RendererController;->requestUpdate()V

    :cond_3d
    iput v1, p0, Lmiui/maml/RendererController;->mCurFramerate:F

    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_53

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v5, v1

    float-to-long v2, v5

    :goto_48
    iput-wide v2, p0, Lmiui/maml/RendererController;->mFrameTime:J

    :cond_4a
    iget-wide v10, p0, Lmiui/maml/RendererController;->mFrameTime:J

    cmp-long v5, v10, v8

    if-gez v5, :cond_52

    iget-wide v8, p0, Lmiui/maml/RendererController;->mFrameTime:J

    :cond_52
    return-wide v8

    :cond_53
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_48
.end method

.method public updateIfNeeded(J)J
    .registers 14

    invoke-virtual {p0, p1, p2}, Lmiui/maml/RendererController;->updateFramerate(J)J

    move-result-wide v2

    iget-wide v6, p0, Lmiui/maml/RendererController;->mFrameTime:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-gez v6, :cond_58

    iget-wide v6, p0, Lmiui/maml/RendererController;->mFrameTime:J

    iget-wide v8, p0, Lmiui/maml/RendererController;->mLastUpdateSystemTime:J

    sub-long v8, p1, v8

    sub-long v4, v6, v8

    :goto_17
    invoke-virtual {p0}, Lmiui/maml/RendererController;->hasRunnable()Z

    move-result v1

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2d

    iget-boolean v6, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    if-nez v6, :cond_2d

    invoke-virtual {p0}, Lmiui/maml/RendererController;->hasMessage()Z

    move-result v6

    if-nez v6, :cond_2d

    if-eqz v1, :cond_62

    :cond_2d
    iget-boolean v6, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    if-eqz v6, :cond_33

    if-eqz v1, :cond_57

    :cond_33
    invoke-virtual {p0}, Lmiui/maml/RendererController;->runRunnables()V

    invoke-virtual {p0}, Lmiui/maml/RendererController;->getMessage()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-virtual {p0, v0}, Lmiui/maml/RendererController;->onTouch(Landroid/view/MotionEvent;)V

    :cond_45
    :goto_45
    invoke-virtual {p0, p1, p2}, Lmiui/maml/RendererController;->tick(J)V

    invoke-virtual {p0}, Lmiui/maml/RendererController;->doRender()V

    iget-boolean v6, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    if-nez v6, :cond_55

    invoke-virtual {p0}, Lmiui/maml/RendererController;->hasMessage()Z

    move-result v6

    if-eqz v6, :cond_57

    :cond_55
    const-wide/16 v2, 0x0

    :cond_57
    :goto_57
    return-wide v2

    :cond_58
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_17

    :cond_5e
    invoke-virtual {p0, v0}, Lmiui/maml/RendererController;->onHover(Landroid/view/MotionEvent;)V

    goto :goto_45

    :cond_62
    cmp-long v6, v4, v2

    if-gez v6, :cond_57

    move-wide v2, v4

    goto :goto_57
.end method
