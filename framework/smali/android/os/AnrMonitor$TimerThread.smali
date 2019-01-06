.class public Landroid/os/AnrMonitor$TimerThread;
.super Ljava/lang/Thread;
.source "AnrMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AnrMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimerThread"
.end annotation


# instance fields
.field private completed:Z

.field private timeout:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-wide p1, p0, Landroid/os/AnrMonitor$TimerThread;->timeout:J

    return-void
.end method


# virtual methods
.method public declared-synchronized finishRun()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/os/AnrMonitor$TimerThread;->completed:Z

    invoke-virtual {p0}, Landroid/os/AnrMonitor$TimerThread;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 1

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    invoke-virtual {p0}, Landroid/os/AnrMonitor$TimerThread;->finishRun()V

    return-void
.end method

.method public declared-synchronized startAndWait()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/os/AnrMonitor$TimerThread;->start()V

    iget-wide v2, p0, Landroid/os/AnrMonitor$TimerThread;->timeout:J

    invoke-virtual {p0, v2, v3}, Landroid/os/AnrMonitor$TimerThread;->wait(J)V

    iget-boolean v1, p0, Landroid/os/AnrMonitor$TimerThread;->completed:Z

    if-nez v1, :cond_10

    invoke-virtual {p0}, Landroid/os/AnrMonitor$TimerThread;->interrupt()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_10} :catch_12
    .catchall {:try_start_1 .. :try_end_10} :catchall_17

    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    :catch_12
    move-exception v0

    :try_start_13
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_10

    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method
