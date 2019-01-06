.class public abstract Lmiui/maml/RenderUpdater;
.super Ljava/lang/Object;
.source "RenderUpdater.java"

# interfaces
.implements Lmiui/maml/RendererController$ISelfUpdateRenderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/RenderUpdater$1;,
        Lmiui/maml/RenderUpdater$2;
    }
.end annotation


# instance fields
.field private mAutoCleanup:Z

.field private mCreateTime:J

.field private mDelay:J

.field private mHandler:Landroid/os/Handler;

.field protected mLastUpdateTime:J

.field protected mNextUpdateInterval:J

.field private mPaused:Z

.field protected mPendingRender:Z

.field private mRoot:Lmiui/maml/ScreenElementRoot;

.field private mRunUpdater:Ljava/lang/Runnable;

.field private mSignaled:Z

.field private mStarted:Z

.field private mUpdater:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lmiui/maml/RenderUpdater;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/maml/RenderUpdater;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/RenderUpdater;->mPaused:Z

    return v0
.end method

.method static synthetic -get2(Lmiui/maml/RenderUpdater;)Lmiui/maml/ScreenElementRoot;
    .registers 2

    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method static synthetic -get3(Lmiui/maml/RenderUpdater;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/RenderUpdater;->mSignaled:Z

    return v0
.end method

.method static synthetic -get4(Lmiui/maml/RenderUpdater;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/maml/RenderUpdater;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/RenderUpdater;->mSignaled:Z

    return p1
.end method

.method static synthetic -set1(Lmiui/maml/RenderUpdater;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/RenderUpdater;->mStarted:Z

    return p1
.end method

.method static synthetic -wrap0(Lmiui/maml/RenderUpdater;)V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/RenderUpdater;->doRunUpdater()V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/RenderUpdater;-><init>(Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/maml/RenderUpdater$1;

    invoke-direct {v0, p0}, Lmiui/maml/RenderUpdater$1;-><init>(Lmiui/maml/RenderUpdater;)V

    iput-object v0, p0, Lmiui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    new-instance v0, Lmiui/maml/RenderUpdater$2;

    invoke-direct {v0, p0}, Lmiui/maml/RenderUpdater$2;-><init>(Lmiui/maml/RenderUpdater;)V

    iput-object v0, p0, Lmiui/maml/RenderUpdater;->mRunUpdater:Ljava/lang/Runnable;

    iput-object p1, p0, Lmiui/maml/RenderUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    iput-object p2, p0, Lmiui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    iput-boolean p3, p0, Lmiui/maml/RenderUpdater;->mAutoCleanup:Z

    return-void
.end method

.method private checkDelay()J
    .registers 9

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lmiui/maml/RenderUpdater;->mDelay:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_9

    return-wide v2

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lmiui/maml/RenderUpdater;->mCreateTime:J

    sub-long v0, v4, v6

    iget-wide v4, p0, Lmiui/maml/RenderUpdater;->mDelay:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_1a

    iget-wide v2, p0, Lmiui/maml/RenderUpdater;->mDelay:J

    sub-long/2addr v2, v0

    :cond_1a
    return-wide v2
.end method

.method private doRunUpdater()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/RenderUpdater;->mSignaled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderUpdater;->mSignaled:Z

    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderUpdater;->mPaused:Z

    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfFinish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RenderUpdater;->mSignaled:Z

    return-void
.end method

.method public final doRender()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderUpdater;->mPendingRender:Z

    invoke-virtual {p0}, Lmiui/maml/RenderUpdater;->doRenderImp()V

    return-void
.end method

.method protected abstract doRenderImp()V
.end method

.method public doneRender()V
    .registers 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RenderUpdater;->mPendingRender:Z

    iget-boolean v0, p0, Lmiui/maml/RenderUpdater;->mPaused:Z

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lmiui/maml/RenderUpdater;->mSignaled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_29

    iget-wide v0, p0, Lmiui/maml/RenderUpdater;->mNextUpdateInterval:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_29

    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    iget-wide v2, p0, Lmiui/maml/RenderUpdater;->mNextUpdateInterval:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lmiui/maml/RenderUpdater;->mLastUpdateTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_29
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Lmiui/maml/RenderUpdater;->mAutoCleanup:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lmiui/maml/RenderUpdater;->cleanUp()V

    :cond_7
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public init()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RenderUpdater;->mPaused:Z

    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p0}, Lmiui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lmiui/maml/RendererController$IRenderable;)V

    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfInit()V

    return-void
.end method

.method public isStarted()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/RenderUpdater;->mStarted:Z

    return v0
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RenderUpdater;->mSignaled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderUpdater;->mPaused:Z

    return-void
.end method

.method public onResume()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RenderUpdater;->mPaused:Z

    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfResume()V

    invoke-virtual {p0}, Lmiui/maml/RenderUpdater;->runUpdater()V

    return-void
.end method

.method public runUpdater()V
    .registers 5

    iget-boolean v2, p0, Lmiui/maml/RenderUpdater;->mStarted:Z

    if-eqz v2, :cond_1e

    const-wide/16 v0, 0x0

    :goto_6
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_23

    iget-object v2, p0, Lmiui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/RenderUpdater;->mRunUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, p0, Lmiui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/RenderUpdater;->mRunUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    invoke-direct {p0}, Lmiui/maml/RenderUpdater;->checkDelay()J

    move-result-wide v0

    goto :goto_6

    :cond_23
    invoke-direct {p0}, Lmiui/maml/RenderUpdater;->doRunUpdater()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/RenderUpdater;->mStarted:Z

    goto :goto_1d
.end method

.method public setAutoCleanup(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/RenderUpdater;->mAutoCleanup:Z

    return-void
.end method

.method public setStartDelay(JJ)V
    .registers 10

    iput-wide p1, p0, Lmiui/maml/RenderUpdater;->mCreateTime:J

    iput-wide p3, p0, Lmiui/maml/RenderUpdater;->mDelay:J

    iget-wide v0, p0, Lmiui/maml/RenderUpdater;->mDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderUpdater;->mStarted:Z

    :cond_f
    return-void
.end method

.method public triggerUpdate()V
    .registers 1

    invoke-virtual {p0}, Lmiui/maml/RenderUpdater;->runUpdater()V

    return-void
.end method
