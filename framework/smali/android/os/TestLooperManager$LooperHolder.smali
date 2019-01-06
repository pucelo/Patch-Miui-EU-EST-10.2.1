.class Landroid/os/TestLooperManager$LooperHolder;
.super Ljava/lang/Object;
.source "TestLooperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TestLooperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LooperHolder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/TestLooperManager;


# direct methods
.method private constructor <init>(Landroid/os/TestLooperManager;)V
    .registers 2

    iput-object p1, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/TestLooperManager;Landroid/os/TestLooperManager$LooperHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/TestLooperManager$LooperHolder;-><init>(Landroid/os/TestLooperManager;)V

    return-void
.end method

.method private processMessage(Landroid/os/TestLooperManager$MessageExecution;)V
    .registers 5

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Landroid/os/TestLooperManager$MessageExecution;->-get0(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;

    move-result-object v1

    iget-object v1, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/TestLooperManager$MessageExecution;->-get0(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/os/TestLooperManager$MessageExecution;->-set1(Landroid/os/TestLooperManager$MessageExecution;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_17
    .catchall {:try_start_1 .. :try_end_12} :catchall_1c

    :goto_12
    :try_start_12
    invoke-virtual {p1}, Landroid/os/TestLooperManager$MessageExecution;->notifyAll()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1c

    monitor-exit p1

    return-void

    :catch_17
    move-exception v0

    :try_start_18
    invoke-static {p1, v0}, Landroid/os/TestLooperManager$MessageExecution;->-set1(Landroid/os/TestLooperManager$MessageExecution;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_12

    :catchall_1c
    move-exception v1

    monitor-exit p1

    throw v1
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v3, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/os/TestLooperManager;->-set0(Landroid/os/TestLooperManager;Z)Z

    iget-object v2, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    invoke-virtual {v2}, Landroid/os/TestLooperManager;->notify()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2f

    monitor-exit v3

    :cond_f
    :goto_f
    iget-object v2, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    invoke-static {v2}, Landroid/os/TestLooperManager;->-get1(Landroid/os/TestLooperManager;)Z

    move-result v2

    if-nez v2, :cond_32

    :try_start_17
    iget-object v2, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    invoke-static {v2}, Landroid/os/TestLooperManager;->-get0(Landroid/os/TestLooperManager;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/TestLooperManager$MessageExecution;

    invoke-static {v1}, Landroid/os/TestLooperManager$MessageExecution;->-get0(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-direct {p0, v1}, Landroid/os/TestLooperManager$LooperHolder;->processMessage(Landroid/os/TestLooperManager$MessageExecution;)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_2c} :catch_2d

    goto :goto_f

    :catch_2d
    move-exception v0

    goto :goto_f

    :catchall_2f
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_32
    iget-object v3, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    monitor-enter v3

    :try_start_35
    iget-object v2, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/TestLooperManager;->-set0(Landroid/os/TestLooperManager;Z)Z
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_3d

    monitor-exit v3

    return-void

    :catchall_3d
    move-exception v2

    monitor-exit v3

    throw v2
.end method
