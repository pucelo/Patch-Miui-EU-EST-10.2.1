.class final Landroid/app/Instrumentation$Idler;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Idler"
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/Runnable;

.field private mIdle:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/Instrumentation$Idler;->mCallback:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Instrumentation$Idler;->mIdle:Z

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .registers 2

    iget-object v0, p0, Landroid/app/Instrumentation$Idler;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/Instrumentation$Idler;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_9
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p0, Landroid/app/Instrumentation$Idler;->mIdle:Z

    invoke-virtual {p0}, Landroid/app/Instrumentation$Idler;->notifyAll()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_13

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitForIdle()V
    .registers 3

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v1, p0, Landroid/app/Instrumentation$Idler;->mIdle:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v1, :cond_b

    :try_start_5
    invoke-virtual {p0}, Landroid/app/Instrumentation$Idler;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    goto :goto_1

    :catch_9
    move-exception v0

    goto :goto_1

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1
.end method
