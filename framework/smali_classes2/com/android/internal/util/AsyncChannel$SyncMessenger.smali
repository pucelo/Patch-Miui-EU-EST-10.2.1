.class Lcom/android/internal/util/AsyncChannel$SyncMessenger;
.super Ljava/lang/Object;
.source "AsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/AsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncMessenger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;
    }
.end annotation


# static fields
.field private static sCount:I

.field private static sStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/internal/util/AsyncChannel$SyncMessenger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMessenger:Landroid/os/Messenger;


# direct methods
.method static synthetic -wrap0(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;
    .registers 3

    invoke-static {p0, p1}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    const/4 v0, 0x0

    sput v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sCount:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static obtain()Lcom/android/internal/util/AsyncChannel$SyncMessenger;
    .registers 6

    sget-object v2, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_52

    new-instance v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;-><init>()V

    new-instance v1, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SyncHandler-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sCount:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;-><init>(Lcom/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)V

    iput-object v1, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    new-instance v1, Landroid/os/Messenger;

    iget-object v3, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-direct {v1, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mMessenger:Landroid/os/Messenger;
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_5b

    :goto_50
    monitor-exit v2

    return-object v0

    :cond_52
    :try_start_52
    sget-object v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_5b

    goto :goto_50

    :catchall_5b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private recycle()V
    .registers 3

    sget-object v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static sendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;
    .registers 9

    invoke-static {}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->obtain()Lcom/android/internal/util/AsyncChannel$SyncMessenger;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz p0, :cond_44

    if-eqz p1, :cond_44

    :try_start_9
    iget-object v4, v3, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mMessenger:Landroid/os/Messenger;

    iput-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v4, v3, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v4}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-get0(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_14} :catch_4b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_56

    :try_start_14
    iget-object v4, v3, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v4}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-get1(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Landroid/os/Message;

    move-result-object v4

    if-eqz v4, :cond_2b

    const-string/jumbo v4, "AsyncChannel"

    const-string/jumbo v6, "mResultMsg should be null here"

    invoke-static {v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v3, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-set0(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)Landroid/os/Message;

    :cond_2b
    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iget-object v4, v3, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v4}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-get0(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    iget-object v4, v3, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v4}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-get1(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Landroid/os/Message;

    move-result-object v2

    iget-object v4, v3, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-set0(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)Landroid/os/Message;
    :try_end_43
    .catchall {:try_start_14 .. :try_end_43} :catchall_48

    :try_start_43
    monitor-exit v5
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_44} :catch_4b
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_44} :catch_56

    :cond_44
    :goto_44
    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->recycle()V

    return-object v2

    :catchall_48
    move-exception v4

    :try_start_49
    monitor-exit v5

    throw v4
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4b} :catch_4b
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4b} :catch_56

    :catch_4b
    move-exception v1

    const-string/jumbo v4, "AsyncChannel"

    const-string/jumbo v5, "error in sendMessageSynchronously"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    :catch_56
    move-exception v0

    const-string/jumbo v4, "AsyncChannel"

    const-string/jumbo v5, "error in sendMessageSynchronously"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44
.end method
