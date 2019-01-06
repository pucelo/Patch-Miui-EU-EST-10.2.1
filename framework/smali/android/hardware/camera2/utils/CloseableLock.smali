.class public Landroid/hardware/camera2/utils/CloseableLock;
.super Ljava/lang/Object;
.source "CloseableLock.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/CloseableLock$1;,
        Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
    }
.end annotation


# static fields
.field private static final VERBOSE:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private volatile mClosed:Z

.field private final mCondition:Ljava/util/concurrent/locks/Condition;

.field private mExclusive:Z

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mLockCount:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private mSharedLocks:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "CloseableLock"

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    iput v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Landroid/hardware/camera2/utils/CloseableLock$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/utils/CloseableLock$1;-><init>(Landroid/hardware/camera2/utils/CloseableLock;)V

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "CloseableLock"

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    iput v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Landroid/hardware/camera2/utils/CloseableLock$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/utils/CloseableLock$1;-><init>(Landroid/hardware/camera2/utils/CloseableLock;)V

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    iput-object p1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mName:Ljava/lang/String;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CloseableLock["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public acquireExclusiveLock()Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2b

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v3

    :cond_10
    :try_start_10
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-nez v1, :cond_32

    if-lez v0, :cond_32

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot acquire exclusive lock while holding shared lock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v1

    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_32
    if-nez v0, :cond_4b

    :try_start_34
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-nez v1, :cond_3c

    iget v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    if-lez v1, :cond_4b

    :cond_3c
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_2b

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v3

    :cond_4b
    const/4 v1, 0x1

    :try_start_4c
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_65
    .catchall {:try_start_4c .. :try_end_65} :catchall_2b

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v1, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;

    invoke-direct {v1, p0, v3}, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;-><init>(Landroid/hardware/camera2/utils/CloseableLock;Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;)V

    return-object v1
.end method

.method public acquireLock()Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2b

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v3

    :cond_10
    :try_start_10
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-eqz v1, :cond_32

    if-lez v0, :cond_32

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot acquire shared lock while holding exclusive lock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v1

    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_32
    :try_start_32
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-eqz v1, :cond_45

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_2b

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v3

    :cond_45
    :try_start_45
    iget v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_62
    .catchall {:try_start_45 .. :try_end_62} :catchall_2b

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v1, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;

    invoke-direct {v1, p0, v3}, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;-><init>(Landroid/hardware/camera2/utils/CloseableLock;Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;)V

    return-object v1
.end method

.method public close()V
    .registers 4

    const/4 v2, 0x1

    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    if-eqz v1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Landroid/hardware/camera2/utils/CloseableLock;->acquireExclusiveLock()Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_24

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot close while one or more acquired locks are being held by this thread; release all other locks first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    :try_start_24
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_3c
    .catchall {:try_start_24 .. :try_end_3c} :catchall_42

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_42
    move-exception v1

    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public releaseLock()V
    .registers 5

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_17

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot release lock that was not acquired by this thread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    :try_start_17
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    if-eqz v1, :cond_30

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Do not release after the lock has been closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v1

    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_30
    :try_start_30
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-nez v1, :cond_65

    iget v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    :cond_3a
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    if-nez v0, :cond_85

    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-eqz v1, :cond_85

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_5f
    .catchall {:try_start_30 .. :try_end_5f} :catchall_29

    :cond_5f
    :goto_5f
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_65
    :try_start_65
    iget v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    if-eqz v1, :cond_3a

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Too many shared locks "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_85
    if-nez v0, :cond_5f

    iget v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    if-nez v1, :cond_5f

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_90
    .catchall {:try_start_65 .. :try_end_90} :catchall_29

    goto :goto_5f
.end method
