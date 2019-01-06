.class public Landroid/os/SynchronousResultReceiver;
.super Landroid/os/ResultReceiver;
.source "SynchronousResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SynchronousResultReceiver$Result;
    }
.end annotation


# instance fields
.field private final mFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Landroid/os/SynchronousResultReceiver$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Landroid/os/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    iput-object v1, p0, Landroid/os/SynchronousResultReceiver;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Landroid/os/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    iput-object p1, p0, Landroid/os/SynchronousResultReceiver;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v0, v4, p1

    :goto_6
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-ltz v4, :cond_2a

    :try_start_c
    iget-object v4, p0, Landroid/os/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p1, p2, v5}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/SynchronousResultReceiver$Result;
    :try_end_16
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_c .. :try_end_16} :catch_20
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_16} :catch_17

    return-object v4

    :catch_17
    move-exception v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    sub-long/2addr p1, v4

    goto :goto_6

    :catch_20
    move-exception v3

    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "Error receiving response"

    invoke-direct {v4, v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_2a
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v4
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/SynchronousResultReceiver;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected final onReceiveResult(ILandroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    iget-object v0, p0, Landroid/os/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Landroid/os/SynchronousResultReceiver$Result;

    invoke-direct {v1, p1, p2}, Landroid/os/SynchronousResultReceiver$Result;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
