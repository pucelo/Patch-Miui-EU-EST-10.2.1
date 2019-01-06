.class Landroid/os/statistics/StackUtils;
.super Ljava/lang/Object;
.source "StackUtils.java"


# static fields
.field private static final MAX_STACK_DEPTH:I = 0x20

.field private static final MAX_STACK_LENGH:I = 0x400

.field public static final emptyJsonedStack:Lorg/json/JSONArray;

.field public static final emptyStack:[Ljava/lang/String;

.field private static final sStackTraceStringBuilder:Ljava/lang/StringBuilder;

.field private static final sStackTraceStringBuilderBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final suggestedStackTopMethodFullNames:[Ljava/lang/String;

.field private static volatile topClassMethodSimpleNames:[Ljava/util/ArrayList;

.field private static volatile topClasses:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Landroid/os/statistics/StackUtils;->emptyJsonedStack:Lorg/json/JSONArray;

    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "java.lang.Thread.sleep"

    aput-object v1, v0, v3

    const-string/jumbo v1, "java.lang.Thread.join"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.Semaphore.acquire"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.Semaphore.acquireUninterruptibly"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.Semaphore.tryAcquire"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.Semaphore.release"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.acquire"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.acquireInterruptibly"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.tryAcquireNanos"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.release"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.acquireShared"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.acquireSharedInterruptibly"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.tryAcquireSharedNanos"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.releaseShared"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.signal"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.signalAll"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.await"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.awaitNanos"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.awaitUntil"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.awaitUninterruptibly"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer.acquire"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireInterruptibly"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer.tryAcquireNanos"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer.release"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireShared"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireSharedInterruptibly"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer.tryAcquireSharedNanos"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer.releaseShared"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.signal"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.signalAll"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitNanos"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitUntil"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitUninterruptibly"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantLock.lock"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantLock.lockInterruptibly"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantLock.tryLock"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantLock.unlock"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock.lock"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock.lockInterruptibly"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock.tryLock"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock.unlock"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock.lock"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock.lockInterruptibly"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock.tryLock"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock.unlock"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock$ReadLockView.lock"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock$ReadLockView.lockInterruptibly"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock$ReadLockView.tryLock"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock$ReadLockView.unlock"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock$WriteLockView.lock"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock$WriteLockView.lockInterruptibly"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock$WriteLockView.tryLock"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock$WriteLockView.unlock"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.writeLock"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.tryWriteLock"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.writeLockInterruptibly"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.readLock"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.tryReadLock"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.readLockInterruptibly"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.unlockWrite"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.unlockRead"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.unlock"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.tryConvertToReadLock"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.tryConvertToWriteLock"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.tryConvertToOptimisticRead"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.tryUnlockWrite"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.tryUnlockRead"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.StampedLock.unstampedUnlockRead"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.LockSupport.park"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.LockSupport.parkNanos"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.LockSupport.parkUntil"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string/jumbo v1, "java.util.concurrent.locks.LockSupport.unpark"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/statistics/StackUtils;->suggestedStackTopMethodFullNames:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilderBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStackTrace(Lorg/json/JSONArray;)[Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    sget-object v3, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    return-object v3

    :cond_5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_c
    array-length v3, v2

    if-ge v1, v3, :cond_1f

    :try_start_f
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_15} :catch_18

    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :catch_18
    move-exception v0

    const-string/jumbo v3, ""

    aput-object v3, v2, v1

    goto :goto_15

    :cond_1f
    return-object v2
.end method

.method public static getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 34

    const/4 v12, 0x0

    const/4 v5, 0x0

    new-instance v21, Ljava/util/ArrayList;

    const/16 v26, 0x20

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p2, :cond_44

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_44

    const/4 v10, 0x0

    :goto_17
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v10, v0, :cond_44

    aget-object v13, p2, v10

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_2b

    :cond_28
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_2b
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v26

    add-int v12, v12, v26

    const/16 v26, 0x20

    move/from16 v0, v26

    if-ge v5, v0, :cond_44

    const/16 v26, 0x400

    move/from16 v0, v26

    if-lt v12, v0, :cond_28

    :cond_44
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ge v5, v0, :cond_50

    const/16 v26, 0x400

    move/from16 v0, v26

    if-lt v12, v0, :cond_65

    :cond_50
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Ljava/lang/String;

    return-object v26

    :cond_65
    if-eqz p0, :cond_50

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v26, v0

    if-eqz v26, :cond_50

    sget-object v26, Landroid/os/statistics/StackUtils;->topClassMethodSimpleNames:[Ljava/util/ArrayList;

    if-nez v26, :cond_11a

    const-class v27, Landroid/os/statistics/StackUtils;

    monitor-enter v27

    :try_start_75
    sget-object v26, Landroid/os/statistics/StackUtils;->topClassMethodSimpleNames:[Ljava/util/ArrayList;

    if-nez v26, :cond_119

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    sget-object v28, Landroid/os/statistics/StackUtils;->suggestedStackTopMethodFullNames:[Ljava/lang/String;

    const/16 v26, 0x0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    :goto_87
    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_d2

    aget-object v16, v28, v26
    :try_end_8f
    .catchall {:try_start_75 .. :try_end_8f} :catchall_195

    :try_start_8f
    const-string/jumbo v30, "."

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v30, v6, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    if-nez v25, :cond_c8

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c8
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_cf
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8f .. :try_end_cf} :catch_2c6
    .catchall {:try_start_8f .. :try_end_cf} :catchall_195

    :goto_cf
    add-int/lit8 v26, v26, 0x1

    goto :goto_87

    :cond_d2
    :try_start_d2
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/Class;

    array-length v0, v15

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v14, v0, [Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_fa
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_115

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    aput-object v3, v15, v11

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    aput-object v26, v14, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_fa

    :cond_115
    sput-object v15, Landroid/os/statistics/StackUtils;->topClasses:[Ljava/lang/Class;

    sput-object v14, Landroid/os/statistics/StackUtils;->topClassMethodSimpleNames:[Ljava/util/ArrayList;
    :try_end_119
    .catchall {:try_start_d2 .. :try_end_119} :catchall_195

    :cond_119
    monitor-exit v27

    :cond_11a
    const/16 v24, 0x0

    const/16 v18, 0x0

    if-eqz p1, :cond_13b

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_198

    const/16 v26, 0x0

    aget-object v26, p1, v26

    const-class v27, Ljava/lang/Thread;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_198

    const/16 v18, 0x1

    :cond_13b
    :goto_13b
    if-eqz v18, :cond_172

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v24, v26, -0x1

    :goto_144
    if-lez v24, :cond_172

    aget-object v3, p1, v24

    if-eqz v3, :cond_1de

    const/4 v11, -0x1

    const/4 v10, 0x0

    :goto_14c
    sget-object v26, Landroid/os/statistics/StackUtils;->topClasses:[Ljava/lang/Class;

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v10, v0, :cond_160

    sget-object v26, Landroid/os/statistics/StackUtils;->topClasses:[Ljava/lang/Class;

    aget-object v26, v26, v10

    move-object/from16 v0, v26

    if-ne v0, v3, :cond_1da

    move v11, v10

    :cond_160
    if-ltz v11, :cond_1de

    aget-object v7, p0, v24

    sget-object v26, Landroid/os/statistics/StackUtils;->topClassMethodSimpleNames:[Ljava/util/ArrayList;

    aget-object v25, v26, v11

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1de

    :cond_172
    const/16 v19, 0x0

    sget-object v26, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilderBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v26

    if-eqz v26, :cond_1e2

    sget-object v20, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilder:Ljava/lang/StringBuilder;

    :goto_182
    const/4 v9, 0x0

    move/from16 v10, v24

    :goto_185
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v10, v0, :cond_24e

    aget-object v22, p0, v10

    if-nez v22, :cond_1ee

    :cond_192
    add-int/lit8 v10, v10, 0x1

    goto :goto_185

    :catchall_195
    move-exception v26

    monitor-exit v27

    throw v26

    :cond_198
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_13b

    const/16 v26, 0x0

    aget-object v26, p1, v26

    const-class v27, Ljava/lang/Object;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_13b

    const/16 v26, 0x1

    aget-object v26, p1, v26

    const-class v27, Ljava/lang/Thread;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_1c9

    const/16 v26, 0x2

    aget-object v26, p1, v26

    const-class v27, Ljava/lang/Thread;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_1cd

    :cond_1c9
    :goto_1c9
    const/16 v18, 0x1

    goto/16 :goto_13b

    :cond_1cd
    const/16 v26, 0x3

    aget-object v26, p1, v26

    const-class v27, Ljava/lang/Thread;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_13b

    goto :goto_1c9

    :cond_1da
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_14c

    :cond_1de
    add-int/lit8 v24, v24, -0x1

    goto/16 :goto_144

    :cond_1e2
    new-instance v20, Ljava/lang/StringBuilder;

    const/16 v26, 0x100

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_182

    :cond_1ee
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    if-nez p1, :cond_272

    const/4 v3, 0x0

    :goto_1fa
    if-eqz v3, :cond_275

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_275

    const/16 v26, 0x2d

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x2e

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_20f
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v9, :cond_22d

    const/4 v9, 0x1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v26

    if-eqz v26, :cond_287

    const-string/jumbo v26, "(Native)"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22d
    :goto_22d
    move-object/from16 v19, v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v26

    add-int v12, v12, v26

    const/16 v26, 0x20

    move/from16 v0, v26

    if-ge v5, v0, :cond_24e

    const/16 v26, 0x400

    move/from16 v0, v26

    if-lt v12, v0, :cond_192

    :cond_24e
    sget-object v26, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_25d

    sget-object v26, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilderBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_25d
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Ljava/lang/String;

    return-object v26

    :cond_272
    aget-object v3, p1, v10

    goto :goto_1fa

    :cond_275
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x2e

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20f

    :cond_287
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_2ba

    const/16 v26, 0x28

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v26, 0x3a

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x29

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_22d

    :cond_2ba
    const-string/jumbo v26, "(None)"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_22d

    :catch_2c6
    move-exception v8

    goto/16 :goto_cf
.end method
