.class Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateThread;
.super Ljava/lang/Thread;
.source "AsyncLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflateThread"
.end annotation


# static fields
.field private static final sInstance:Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateThread;


# instance fields
.field private mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestPool:Lcom/miui/systemui/support/v4/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/systemui/support/v4/util/Pools$SynchronizedPool",
            "<",
            "Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateThread;

    invoke-direct {v0}, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateThread;-><init>()V

    sput-object v0, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateThread;->sInstance:Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateThread;

    sget-object v0, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateThread;->sInstance:Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateThread;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateThread;->start()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/16 v1, 0xa

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Lcom/miui/systemui/support/v4/util/Pools$SynchronizedPool;

    invoke-direct {v0, v1}, Lcom/miui/systemui/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Lcom/miui/systemui/support/v4/util/Pools$SynchronizedPool;

    return-void
.end method

.method public static getInstance()Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateThread;
    .locals 1

    sget-object v0, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateThread;->sInstance:Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateThread;

    return-object v0
.end method


# virtual methods
.method public enqueue(Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateRequest;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed to enqueue async inflate request"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public obtainRequest()Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateRequest;
    .locals 2

    iget-object v1, p0, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Lcom/miui/systemui/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateRequest;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateRequest;

    invoke-direct {v0}, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateRequest;-><init>()V

    :cond_0
    return-object v0
.end method

.method public releaseRequest(Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateRequest;)V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateRequest;->callback:Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;

    iput-object v1, p1, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater;

    iput-object v1, p1, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    iput v0, p1, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateRequest;->resid:I

    iput-object v1, p1, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Lcom/miui/systemui/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateThread;->runInner()V

    goto :goto_0
.end method

.method public runInner()V
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateRequest;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, v2, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater;

    iget-object v3, v3, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    iget v4, v2, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateRequest;->resid:I

    iget-object v5, v2, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    iget-object v3, v2, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater;

    iget-object v3, v3, Lcom/miui/systemui/support/v4/view/AsyncLayoutInflater;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AsyncLayoutInflater"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception v1

    const-string/jumbo v3, "AsyncLayoutInflater"

    const-string/jumbo v4, "Failed to inflate resource in the background! Retrying on the UI thread"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
