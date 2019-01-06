.class abstract Lcom/android/server/ResettableTimeout;
.super Ljava/lang/Object;
.source "ResettableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ResettableTimeout$T;
    }
.end annotation


# instance fields
.field private mLock:Landroid/os/ConditionVariable;

.field private volatile mOffAt:J

.field private volatile mOffCalled:Z

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static synthetic -get0(Lcom/android/server/ResettableTimeout;)Landroid/os/ConditionVariable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/ResettableTimeout;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/ResettableTimeout;->mOffAt:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/ResettableTimeout;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/ResettableTimeout;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    iput-object p1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_3
    iput-wide v0, p0, Lcom/android/server/ResettableTimeout;->mOffAt:J

    iget-object v0, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    :cond_11
    iget-boolean v0, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    invoke-virtual {p0}, Lcom/android/server/ResettableTimeout;->off()V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public go(J)V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/android/server/ResettableTimeout;->mOffAt:J

    iget-object v1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    if-nez v1, :cond_2c

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    new-instance v1, Lcom/android/server/ResettableTimeout$T;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/ResettableTimeout$T;-><init>(Lcom/android/server/ResettableTimeout;Lcom/android/server/ResettableTimeout$T;)V

    iput-object v1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    :goto_27
    invoke-virtual {p0, v0}, Lcom/android/server/ResettableTimeout;->on(Z)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_33

    monitor-exit p0

    return-void

    :cond_2c
    const/4 v0, 0x1

    :try_start_2d
    iget-object v1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_33

    goto :goto_27

    :catchall_33
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public abstract off()V
.end method

.method public abstract on(Z)V
.end method
