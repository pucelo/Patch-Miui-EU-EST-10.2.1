.class abstract Landroid/accounts/AccountManager$Future2Task;
.super Landroid/accounts/AccountManager$BaseFutureTask;
.source "AccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Future2Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/accounts/AccountManager$BaseFutureTask",
        "<TT;>;",
        "Landroid/accounts/AccountManagerFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/accounts/AccountManager$Future2Task;->this$0:Landroid/accounts/AccountManager;

    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManager$BaseFutureTask;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;)V

    iput-object p3, p0, Landroid/accounts/AccountManager$Future2Task;->mCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method private internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    const/4 v8, 0x1

    invoke-virtual {p0}, Landroid/accounts/AccountManager$Future2Task;->isDone()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Landroid/accounts/AccountManager$Future2Task;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v5}, Landroid/accounts/AccountManager;->-wrap1(Landroid/accounts/AccountManager;)V

    :cond_c
    if-nez p1, :cond_16

    :try_start_e
    invoke-virtual {p0}, Landroid/accounts/AccountManager$Future2Task;->get()Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_67
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_11} :catch_62
    .catch Ljava/util/concurrent/CancellationException; {:try_start_e .. :try_end_11} :catch_58
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_e .. :try_end_11} :catch_22
    .catchall {:try_start_e .. :try_end_11} :catchall_2e

    move-result-object v5

    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    return-object v5

    :cond_16
    :try_start_16
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, p2}, Landroid/accounts/AccountManager$Future2Task;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1d} :catch_67
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_16 .. :try_end_1d} :catch_62
    .catch Ljava/util/concurrent/CancellationException; {:try_start_16 .. :try_end_1d} :catch_58
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_16 .. :try_end_1d} :catch_22
    .catchall {:try_start_16 .. :try_end_1d} :catchall_2e

    move-result-object v5

    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    return-object v5

    :catch_22
    move-exception v3

    :try_start_23
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v5, v0, Ljava/io/IOException;

    if-eqz v5, :cond_33

    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v5

    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    throw v5

    :cond_33
    :try_start_33
    instance-of v5, v0, Ljava/lang/UnsupportedOperationException;

    if-eqz v5, :cond_3d

    new-instance v5, Landroid/accounts/AuthenticatorException;

    invoke-direct {v5, v0}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_3d
    instance-of v5, v0, Landroid/accounts/AuthenticatorException;

    if-eqz v5, :cond_44

    check-cast v0, Landroid/accounts/AuthenticatorException;

    throw v0

    :cond_44
    instance-of v5, v0, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_4b

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_4b
    instance-of v5, v0, Ljava/lang/Error;

    if-eqz v5, :cond_52

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_52
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_58
    .catchall {:try_start_33 .. :try_end_58} :catchall_2e

    :catch_58
    move-exception v2

    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    :goto_5c
    new-instance v5, Landroid/accounts/OperationCanceledException;

    invoke-direct {v5}, Landroid/accounts/OperationCanceledException;-><init>()V

    throw v5

    :catch_62
    move-exception v4

    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    goto :goto_5c

    :catch_67
    move-exception v1

    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    goto :goto_5c
.end method


# virtual methods
.method protected done()V
    .registers 2

    iget-object v0, p0, Landroid/accounts/AccountManager$Future2Task;->mCallback:Landroid/accounts/AccountManagerCallback;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/accounts/AccountManager$Future2Task$1;

    invoke-direct {v0, p0}, Landroid/accounts/AccountManager$Future2Task$1;-><init>(Landroid/accounts/AccountManager$Future2Task;)V

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$Future2Task;->postRunnableToHandler(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/accounts/AccountManager$Future2Task;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/accounts/AccountManager$Future2Task;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public start()Landroid/accounts/AccountManager$Future2Task;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/accounts/AccountManager$Future2Task",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/accounts/AccountManager$Future2Task;->startTask()V

    return-object p0
.end method
