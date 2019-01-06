.class public abstract Lmiui/maml/RenderVsyncUpdater;
.super Ljava/lang/Object;
.source "RenderVsyncUpdater.java"

# interfaces
.implements Lmiui/maml/RendererController$ISelfUpdateRenderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/RenderVsyncUpdater$1;,
        Lmiui/maml/RenderVsyncUpdater$2;,
        Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;
    }
.end annotation


# instance fields
.field private mAutoCleanup:Z

.field private mCreateTime:J

.field private mDelay:J

.field private mDisplayEventReceiver:Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

.field private mHandler:Landroid/os/Handler;

.field protected mLastUpdateTime:J

.field protected mNextUpdateInterval:J

.field private mPaused:Z

.field protected mPendingRender:Z

.field private mRoot:Lmiui/maml/ScreenElementRoot;

.field private mRunUpdater:Ljava/lang/Runnable;

.field private mScheduleFrame:Ljava/lang/Runnable;

.field private mStarted:Z

.field private mVsyncLeft:I


# direct methods
.method static synthetic -get0(Lmiui/maml/RenderVsyncUpdater;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/maml/RenderVsyncUpdater;)I
    .registers 2

    iget v0, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:I

    return v0
.end method

.method static synthetic -set0(Lmiui/maml/RenderVsyncUpdater;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/RenderVsyncUpdater;->mStarted:Z

    return p1
.end method

.method static synthetic -set1(Lmiui/maml/RenderVsyncUpdater;I)I
    .registers 2

    iput p1, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:I

    return p1
.end method

.method static synthetic -wrap0(Lmiui/maml/RenderVsyncUpdater;)V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/RenderVsyncUpdater;->doRunUpdater()V

    return-void
.end method

.method static synthetic -wrap1(Lmiui/maml/RenderVsyncUpdater;)V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/RenderVsyncUpdater;->scheduleFrame()V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/RenderVsyncUpdater;-><init>(Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/maml/RenderVsyncUpdater$1;

    invoke-direct {v0, p0}, Lmiui/maml/RenderVsyncUpdater$1;-><init>(Lmiui/maml/RenderVsyncUpdater;)V

    iput-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRunUpdater:Ljava/lang/Runnable;

    new-instance v0, Lmiui/maml/RenderVsyncUpdater$2;

    invoke-direct {v0, p0}, Lmiui/maml/RenderVsyncUpdater$2;-><init>(Lmiui/maml/RenderVsyncUpdater;)V

    iput-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    iput-object p1, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    iput-object p2, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    iput-boolean p3, p0, Lmiui/maml/RenderVsyncUpdater;->mAutoCleanup:Z

    new-instance v0, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;-><init>(Lmiui/maml/RenderVsyncUpdater;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    return-void
.end method

.method private checkDelay()J
    .registers 9

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lmiui/maml/RenderVsyncUpdater;->mDelay:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_9

    return-wide v2

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lmiui/maml/RenderVsyncUpdater;->mCreateTime:J

    sub-long v0, v4, v6

    iget-wide v4, p0, Lmiui/maml/RenderVsyncUpdater;->mDelay:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_1a

    iget-wide v2, p0, Lmiui/maml/RenderVsyncUpdater;->mDelay:J

    sub-long/2addr v2, v0

    :cond_1a
    return-wide v2
.end method

.method private doRunUpdater()V
    .registers 3

    iget v0, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:I

    if-lez v0, :cond_a

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->scheduleVsync()V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method private scheduleFrame()V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2, v0, v1}, Lmiui/maml/ScreenElementRoot;->update(J)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/RenderVsyncUpdater;->mNextUpdateInterval:J

    iget-wide v2, p0, Lmiui/maml/RenderVsyncUpdater;->mNextUpdateInterval:J

    const-wide/16 v4, 0x10

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:I

    iget v2, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:I

    if-lez v2, :cond_1e

    iget v2, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:I

    :cond_1e
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPaused:Z

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfFinish()V

    return-void
.end method

.method public final doRender()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPendingRender:Z

    invoke-virtual {p0}, Lmiui/maml/RenderVsyncUpdater;->doRenderImp()V

    return-void
.end method

.method protected abstract doRenderImp()V
.end method

.method public doneRender()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPendingRender:Z

    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mAutoCleanup:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lmiui/maml/RenderVsyncUpdater;->cleanUp()V

    :cond_7
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public init()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPaused:Z

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p0}, Lmiui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lmiui/maml/RendererController$IRenderable;)V

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfInit()V

    return-void
.end method

.method public isStarted()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mStarted:Z

    return v0
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPaused:Z

    return-void
.end method

.method public onResume()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPaused:Z

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfResume()V

    invoke-virtual {p0}, Lmiui/maml/RenderVsyncUpdater;->runUpdater()V

    return-void
.end method

.method public runUpdater()V
    .registers 5

    invoke-direct {p0}, Lmiui/maml/RenderVsyncUpdater;->checkDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1c

    iget-object v2, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/RenderVsyncUpdater;->mRunUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/RenderVsyncUpdater;->mRunUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    invoke-direct {p0}, Lmiui/maml/RenderVsyncUpdater;->doRunUpdater()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/RenderVsyncUpdater;->mStarted:Z

    goto :goto_1b
.end method

.method public setAutoCleanup(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/RenderVsyncUpdater;->mAutoCleanup:Z

    return-void
.end method

.method public setStartDelay(JJ)V
    .registers 10

    iput-wide p1, p0, Lmiui/maml/RenderVsyncUpdater;->mCreateTime:J

    iput-wide p3, p0, Lmiui/maml/RenderVsyncUpdater;->mDelay:J

    iget-wide v0, p0, Lmiui/maml/RenderVsyncUpdater;->mDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mStarted:Z

    :cond_f
    return-void
.end method

.method public triggerUpdate()V
    .registers 1

    invoke-virtual {p0}, Lmiui/maml/RenderVsyncUpdater;->runUpdater()V

    return-void
.end method
