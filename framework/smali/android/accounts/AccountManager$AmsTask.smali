.class abstract Landroid/accounts/AccountManager$AmsTask;
.super Ljava/util/concurrent/FutureTask;
.source "AccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AmsTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountManager$AmsTask$Response;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Landroid/accounts/AccountManagerFuture",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;

.field final mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field final mResponse:Landroid/accounts/IAccountManagerResponse;

.field final synthetic this$0:Landroid/accounts/AccountManager;


# direct methods
.method static synthetic -wrap0(Landroid/accounts/AccountManager$AmsTask;Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$AmsTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/accounts/AccountManager$AmsTask;->this$0:Landroid/accounts/AccountManager;

    new-instance v0, Landroid/accounts/AccountManager$AmsTask$1;

    invoke-direct {v0, p1}, Landroid/accounts/AccountManager$AmsTask$1;-><init>(Landroid/accounts/AccountManager;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p3, p0, Landroid/accounts/AccountManager$AmsTask;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Landroid/accounts/AccountManager$AmsTask;->mCallback:Landroid/accounts/AccountManagerCallback;

    iput-object p2, p0, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    new-instance v0, Landroid/accounts/AccountManager$AmsTask$Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/accounts/AccountManager$AmsTask$Response;-><init>(Landroid/accounts/AccountManager$AmsTask;Landroid/accounts/AccountManager$AmsTask$Response;)V

    iput-object v0, p0, Landroid/accounts/AccountManager$AmsTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    return-void
.end method

.method private internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    const/4 v8, 0x1

    invoke-virtual {p0}, Landroid/accounts/AccountManager$AmsTask;->isDone()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Landroid/accounts/AccountManager$AmsTask;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v5}, Landroid/accounts/AccountManager;->-wrap1(Landroid/accounts/AccountManager;)V

    :cond_c
    if-nez p1, :cond_18

    :try_start_e
    invoke-virtual {p0}, Landroid/accounts/AccountManager$AmsTask;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;
    :try_end_14
    .catch Ljava/util/concurrent/CancellationException; {:try_start_e .. :try_end_14} :catch_6b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_14} :catch_66
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_14} :catch_5c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_e .. :try_end_14} :catch_26
    .catchall {:try_start_e .. :try_end_14} :catchall_32

    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    return-object v5

    :cond_18
    :try_start_18
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, p2}, Landroid/accounts/AccountManager$AmsTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;
    :try_end_22
    .catch Ljava/util/concurrent/CancellationException; {:try_start_18 .. :try_end_22} :catch_6b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_18 .. :try_end_22} :catch_66
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_22} :catch_5c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_18 .. :try_end_22} :catch_26
    .catchall {:try_start_18 .. :try_end_22} :catchall_32

    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    return-object v5

    :catch_26
    move-exception v3

    :try_start_27
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v5, v0, Ljava/io/IOException;

    if-eqz v5, :cond_37

    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v5

    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    throw v5

    :cond_37
    :try_start_37
    instance-of v5, v0, Ljava/lang/UnsupportedOperationException;

    if-eqz v5, :cond_41

    new-instance v5, Landroid/accounts/AuthenticatorException;

    invoke-direct {v5, v0}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_41
    instance-of v5, v0, Landroid/accounts/AuthenticatorException;

    if-eqz v5, :cond_48

    check-cast v0, Landroid/accounts/AuthenticatorException;

    throw v0

    :cond_48
    instance-of v5, v0, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_4f

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_4f
    instance-of v5, v0, Ljava/lang/Error;

    if-eqz v5, :cond_56

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_56
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_5c
    .catchall {:try_start_37 .. :try_end_5c} :catchall_32

    :catch_5c
    move-exception v1

    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    :goto_60
    new-instance v5, Landroid/accounts/OperationCanceledException;

    invoke-direct {v5}, Landroid/accounts/OperationCanceledException;-><init>()V

    throw v5

    :catch_66
    move-exception v4

    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    goto :goto_60

    :catch_6b
    move-exception v2

    :try_start_6c
    new-instance v5, Landroid/accounts/OperationCanceledException;

    invoke-direct {v5}, Landroid/accounts/OperationCanceledException;-><init>()V

    throw v5
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_32
.end method


# virtual methods
.method public abstract doWork()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected done()V
    .registers 4

    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask;->mCallback:Landroid/accounts/AccountManagerCallback;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask;->this$0:Landroid/accounts/AccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/accounts/AccountManager$AmsTask;->mCallback:Landroid/accounts/AccountManagerCallback;

    invoke-static {v0, v1, v2, p0}, Landroid/accounts/AccountManager;->-wrap3(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V

    :cond_d
    return-void
.end method

.method public getResult()Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/accounts/AccountManager$AmsTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/accounts/AccountManager$AmsTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/accounts/AccountManager$AmsTask;->getResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/accounts/AccountManager$AmsTask;->getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected set(Landroid/os/Bundle;)V
    .registers 5

    if-nez p1, :cond_10

    const-string/jumbo v0, "AccountManager"

    const-string/jumbo v1, "the bundle must not be null"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic set(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$AmsTask;->set(Landroid/os/Bundle;)V

    return-void
.end method

.method public final start()Landroid/accounts/AccountManagerFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/accounts/AccountManager$AmsTask;->doWork()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-object p0

    :catch_4
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$AmsTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_3
.end method
