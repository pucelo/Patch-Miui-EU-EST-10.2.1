.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$FileDescriptorRecord;,
        Landroid/os/MessageQueue$IdleHandler;,
        Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MessageQueue"


# instance fields
.field private mBlocked:Z

.field private mFileDescriptorRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/MessageQueue$FileDescriptorRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mNextBarrierToken:I

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:J

.field private final mQuitAllowed:Z

.field private mQuitting:Z


# direct methods
.method constructor <init>(Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    return-void
.end method

.method private dispatchEvents(II)I
    .registers 13

    const-wide/16 v8, 0x1000

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_4
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/MessageQueue$FileDescriptorRecord;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_58

    if-nez v4, :cond_10

    monitor-exit p0

    return v7

    :cond_10
    :try_start_10
    iget v3, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_58

    and-int/2addr p2, v3

    if-nez p2, :cond_17

    monitor-exit p0

    return v3

    :cond_17
    :try_start_17
    iget-object v1, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    iget v5, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_58

    monitor-exit p0

    const-string/jumbo v6, "MessageQueue.dispatchEvents"

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->beginSupervisedTrace(JLjava/lang/String;)V

    iget-object v6, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-interface {v1, v6, p2}, Landroid/os/MessageQueue$OnFileDescriptorEventListener;->onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I

    move-result v2

    if-eqz v2, :cond_2c

    or-int/lit8 v2, v2, 0x4

    :cond_2c
    const-string/jumbo v6, "MessageQueue.dispatchEvents"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v8, v9, v6, v7}, Landroid/os/Trace;->endSupervisedTrace(JLjava/lang/String;Ljava/lang/Object;)V

    if-eq v2, v3, :cond_57

    monitor-enter p0

    :try_start_39
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_56

    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_56

    iget v6, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    if-ne v6, v5, :cond_56

    iput v2, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    if-nez v2, :cond_56

    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_56
    .catchall {:try_start_39 .. :try_end_56} :catchall_5b

    :cond_56
    monitor-exit p0

    :cond_57
    return v2

    :catchall_58
    move-exception v6

    monitor-exit p0

    throw v6

    :catchall_5b
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private dispose()V
    .registers 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeDestroy(J)V

    iput-wide v2, p0, Landroid/os/MessageQueue;->mPtr:J

    :cond_f
    return-void
.end method

.method private isPollingLocked()Z
    .registers 3

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v0, :cond_b

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsPolling(J)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeEnableMonitor(J)V
.end method

.method private static native nativeInit()J
.end method

.method private static native nativeIsPolling(J)Z
.end method

.method private native nativePollOnce(JI)V
.end method

.method private static native nativeSetFileDescriptorEvents(JII)V
.end method

.method private static native nativeWake(J)V
.end method

.method private postSyncBarrier(J)I
    .registers 10

    monitor-enter p0

    :try_start_1
    iget v3, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->markInUse()V

    iput-wide p1, v0, Landroid/os/Message;->when:J

    iput v3, v0, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_27

    :goto_1b
    if-eqz v1, :cond_27

    iget-wide v4, v1, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_27

    move-object v2, v1

    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1b

    :cond_27
    if-eqz v2, :cond_2f

    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_34

    :goto_2d
    monitor-exit p0

    return v3

    :cond_2f
    :try_start_2f
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_34

    goto :goto_2d

    :catchall_34
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private removeAllFutureMessagesLocked()V
    .registers 8

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v1, :cond_12

    iget-wide v4, v1, Landroid/os/Message;->when:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_14

    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    :cond_12
    return-void

    :cond_13
    move-object v1, v0

    :cond_14
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    if-nez v0, :cond_19

    return-void

    :cond_19
    iget-wide v4, v0, Landroid/os/Message;->when:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_13

    iput-object v6, v1, Landroid/os/Message;->next:Landroid/os/Message;

    :goto_21
    move-object v1, v0

    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    if-eqz v0, :cond_12

    goto :goto_21
.end method

.method private removeAllMessagesLocked()V
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_3
    if-eqz v1, :cond_c

    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    move-object v1, v0

    goto :goto_3

    :cond_c
    iput-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    return-void
.end method

.method private updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .registers 10

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_22

    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    if-eqz v2, :cond_22

    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    if-ne v3, p2, :cond_22

    return-void

    :cond_22
    if-eqz p2, :cond_4e

    or-int/lit8 p2, p2, 0x4

    if-nez v2, :cond_43

    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-nez v3, :cond_33

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    :cond_33
    new-instance v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    invoke-direct {v2, p1, p2, p3}, Landroid/os/MessageQueue$FileDescriptorRecord;-><init>(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_3d
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5, v0, p2}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    :cond_42
    :goto_42
    return-void

    :cond_43
    iput-object p3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    iput p2, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    goto :goto_3d

    :cond_4e
    if-eqz v2, :cond_42

    iput v4, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_42
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 4

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    monitor-enter p0

    :try_start_c
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .registers 6

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-nez p3, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    monitor-enter p0

    :try_start_17
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_8
    if-eqz v0, :cond_3f

    if-eqz p3, :cond_10

    iget-object v4, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p3, v4, :cond_3a

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v2, v3}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_8

    :cond_3f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "(Total messages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", polling="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", quitting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_1 .. :try_end_7d} :catchall_7f

    monitor-exit p0

    return-void

    :catchall_7f
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method enableMonitor()V
    .registers 3

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeEnableMonitor(J)V

    return-void
.end method

.method enqueueMessage(Landroid/os/Message;J)Z
    .registers 12

    iget-object v4, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v4, :cond_d

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Message must have a target."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_d
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v4

    if-eqz v4, :cond_2d

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " This message is already in use."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2d
    monitor-enter p0

    :try_start_2e
    iget-boolean v4, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v4, :cond_5d

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " sending message to a Handler on a dead thread"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Landroid/os/Message;->recycle()V
    :try_end_5a
    .catchall {:try_start_2e .. :try_end_5a} :catchall_9e

    const/4 v4, 0x0

    monitor-exit p0

    return v4

    :cond_5d
    :try_start_5d
    invoke-virtual {p1}, Landroid/os/Message;->markInUse()V

    iput-wide p2, p1, Landroid/os/Message;->when:J

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_6c

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_7c

    :cond_6c
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    :goto_72
    if-eqz v1, :cond_79

    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5}, Landroid/os/MessageQueue;->nativeWake(J)V
    :try_end_79
    .catchall {:try_start_5d .. :try_end_79} :catchall_9e

    :cond_79
    monitor-exit p0

    const/4 v4, 0x1

    return v4

    :cond_7c
    :try_start_7c
    iget-wide v4, v2, Landroid/os/Message;->when:J

    cmp-long v4, p2, v4

    if-ltz v4, :cond_6c

    iget-boolean v4, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v4, :cond_a1

    iget-object v4, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v4, :cond_a1

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v1

    :cond_8e
    :goto_8e
    move-object v3, v2

    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v2, :cond_99

    iget-wide v4, v2, Landroid/os/Message;->when:J

    cmp-long v4, p2, v4

    if-gez v4, :cond_a3

    :cond_99
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_9d
    .catchall {:try_start_7c .. :try_end_9d} :catchall_9e

    goto :goto_72

    :catchall_9e
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_a1
    const/4 v1, 0x0

    goto :goto_8e

    :cond_a3
    if-eqz v1, :cond_8e

    :try_start_a5
    invoke-virtual {v2}, Landroid/os/Message;->isAsynchronous()Z
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_9e

    move-result v4

    if-eqz v4, :cond_8e

    const/4 v1, 0x0

    goto :goto_8e
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method hasMessages(Landroid/os/Handler;)Z
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_4

    return v2

    :cond_4
    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_7
    if-eqz v0, :cond_13

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_15

    if-ne v1, p1, :cond_10

    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :cond_10
    :try_start_10
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_15

    goto :goto_7

    :cond_13
    monitor-exit p0

    return v2

    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 7

    const/4 v2, 0x0

    if-nez p1, :cond_4

    return v2

    :cond_4
    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_7
    if-eqz v0, :cond_1d

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_1a

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_1a

    if-eqz p3, :cond_17

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1f

    if-ne v1, p3, :cond_1a

    :cond_17
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :cond_1a
    :try_start_1a
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_1f

    goto :goto_7

    :cond_1d
    monitor-exit p0

    return v2

    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .registers 7

    const/4 v2, 0x0

    if-nez p1, :cond_4

    return v2

    :cond_4
    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_7
    if-eqz v0, :cond_1d

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_1a

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_1a

    if-eqz p3, :cond_17

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1f

    if-ne v1, p3, :cond_1a

    :cond_17
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :cond_1a
    :try_start_1a
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_1f

    goto :goto_7

    :cond_1d
    monitor-exit p0

    return v2

    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isIdle()Z
    .registers 7

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v3, :cond_12

    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v4, v3, Landroid/os/Message;->when:J
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_16

    cmp-long v3, v0, v4

    if-gez v3, :cond_14

    :cond_12
    :goto_12
    monitor-exit p0

    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_12

    :catchall_16
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isPolling()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method next()Landroid/os/Message;
    .registers 19

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/os/MessageQueue;->mPtr:J

    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-nez v14, :cond_c

    const/4 v14, 0x0

    return-object v14

    :cond_c
    const/4 v7, -0x1

    const/4 v6, 0x0

    :goto_e
    if-eqz v6, :cond_13

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v6}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    monitor-enter p0

    :try_start_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v5, :cond_35

    iget-object v14, v5, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v14, :cond_35

    :cond_28
    move-object v10, v5

    iget-object v5, v5, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v5, :cond_35

    invoke-virtual {v5}, Landroid/os/Message;->isAsynchronous()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_28

    :cond_35
    if-eqz v5, :cond_71

    iget-wide v14, v5, Landroid/os/Message;->when:J

    cmp-long v14, v8, v14

    if-gez v14, :cond_54

    iget-wide v14, v5, Landroid/os/Message;->when:J

    sub-long/2addr v14, v8

    const-wide/32 v16, 0x7fffffff

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v6, v14

    :goto_48
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v14, :cond_73

    invoke-direct/range {p0 .. p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_51
    .catchall {:try_start_19 .. :try_end_51} :catchall_6e

    const/4 v14, 0x0

    monitor-exit p0

    return-object v14

    :cond_54
    const/4 v14, 0x0

    :try_start_55
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v10, :cond_67

    iget-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v14, v10, Landroid/os/Message;->next:Landroid/os/Message;

    :goto_5f
    const/4 v14, 0x0

    iput-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->markInUse()V
    :try_end_65
    .catchall {:try_start_55 .. :try_end_65} :catchall_6e

    monitor-exit p0

    return-object v5

    :cond_67
    :try_start_67
    iget-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_6e

    goto :goto_5f

    :catchall_6e
    move-exception v14

    monitor-exit p0

    throw v14

    :cond_71
    const/4 v6, -0x1

    goto :goto_48

    :cond_73
    if-gez v7, :cond_8d

    :try_start_75
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v14, :cond_85

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v14, v14, Landroid/os/Message;->when:J

    cmp-long v14, v8, v14

    if-gez v14, :cond_8d

    :cond_85
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    :cond_8d
    if-gtz v7, :cond_97

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/os/MessageQueue;->mBlocked:Z
    :try_end_94
    .catchall {:try_start_75 .. :try_end_94} :catchall_6e

    monitor-exit p0

    goto/16 :goto_e

    :cond_97
    :try_start_97
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v14, :cond_a8

    const/4 v14, 0x4

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    new-array v14, v14, [Landroid/os/MessageQueue$IdleHandler;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    :cond_a8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/os/MessageQueue$IdleHandler;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;
    :try_end_ba
    .catchall {:try_start_97 .. :try_end_ba} :catchall_6e

    monitor-exit p0

    const/4 v2, 0x0

    :goto_bc
    if-ge v2, v7, :cond_ec

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v3, v14, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    const/4 v15, 0x0

    aput-object v15, v14, v2

    const/4 v4, 0x0

    :try_start_cc
    invoke-interface {v3}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_cc .. :try_end_cf} :catch_de

    move-result v4

    :goto_d0
    if-nez v4, :cond_db

    monitor-enter p0

    :try_start_d3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_da
    .catchall {:try_start_d3 .. :try_end_da} :catchall_e9

    monitor-exit p0

    :cond_db
    add-int/lit8 v2, v2, 0x1

    goto :goto_bc

    :catch_de
    move-exception v11

    const-string/jumbo v14, "MessageQueue"

    const-string/jumbo v15, "IdleHandler threw exception"

    invoke-static {v14, v15, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d0

    :catchall_e9
    move-exception v14

    monitor-exit p0

    throw v14

    :cond_ec
    const/4 v7, 0x0

    const/4 v6, 0x0

    goto/16 :goto_e
.end method

.method public postSyncBarrier()I
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->postSyncBarrier(J)I

    move-result v0

    return v0
.end method

.method quit(Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Main thread not allowed to quit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    monitor-enter p0

    :try_start_e
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_27

    if-eqz v0, :cond_14

    monitor-exit p0

    return-void

    :cond_14
    const/4 v0, 0x1

    :try_start_15
    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz p1, :cond_23

    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    :goto_1c
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_27

    monitor-exit p0

    return-void

    :cond_23
    :try_start_23
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_1c

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    monitor-enter p0

    :try_start_4
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_6
    if-eqz v2, :cond_1b

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_1b

    if-eqz p2, :cond_12

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_1b

    :cond_12
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    move-object v2, v0

    goto :goto_6

    :cond_1b
    :goto_1b
    if-eqz v2, :cond_38

    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v0, :cond_36

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_36

    if-eqz p2, :cond_2b

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_36

    :cond_2b
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_33

    goto :goto_1b

    :catchall_33
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_36
    move-object v2, v0

    goto :goto_1b

    :cond_38
    monitor-exit p0

    return-void
.end method

.method public removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    monitor-enter p0

    :try_start_4
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_6
    if-eqz v2, :cond_1f

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_1f

    iget v3, v2, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_1f

    if-eqz p3, :cond_16

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_1f

    :cond_16
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    move-object v2, v0

    goto :goto_6

    :cond_1f
    :goto_1f
    if-eqz v2, :cond_40

    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v0, :cond_3e

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_3e

    iget v3, v0, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_3e

    if-eqz p3, :cond_33

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_3e

    :cond_33
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_3b

    goto :goto_1f

    :catchall_3b
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_3e
    move-object v2, v0

    goto :goto_1f

    :cond_40
    monitor-exit p0

    return-void
.end method

.method removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 8

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_8
    if-eqz v2, :cond_21

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_21

    iget-object v3, v2, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_21

    if-eqz p3, :cond_18

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_21

    :cond_18
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    move-object v2, v0

    goto :goto_8

    :cond_21
    :goto_21
    if-eqz v2, :cond_42

    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v0, :cond_40

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_40

    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_40

    if-eqz p3, :cond_35

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_40

    :cond_35
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_3d

    goto :goto_21

    :catchall_3d
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_40
    move-object v2, v0

    goto :goto_21

    :cond_42
    monitor-exit p0

    return-void
.end method

.method public removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V
    .registers 4

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_e
    invoke-direct {p0, p1, v0, v1}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeSyncBarrier(I)V
    .registers 8

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_2
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_4
    if-eqz v1, :cond_12

    iget-object v3, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_e

    iget v3, v1, Landroid/os/Message;->arg1:I

    if-eq v3, p1, :cond_12

    :cond_e
    move-object v2, v1

    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_4

    :cond_12
    if-nez v1, :cond_20

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_20
    if-eqz v2, :cond_39

    :try_start_22
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    const/4 v0, 0x0

    :goto_27
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    if-eqz v0, :cond_37

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mQuitting:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_37

    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5}, Landroid/os/MessageQueue;->nativeWake(J)V
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_1d

    :cond_37
    monitor-exit p0

    return-void

    :cond_39
    :try_start_39
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v3, :cond_47

    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->target:Landroid/os/Handler;
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_1d

    if-eqz v3, :cond_49

    :cond_47
    const/4 v0, 0x1

    goto :goto_27

    :cond_49
    const/4 v0, 0x0

    goto :goto_27
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    monitor-enter p0

    :try_start_5
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_7
    if-eqz v2, :cond_14

    const-wide v4, 0x21100000001L

    invoke-virtual {v2, p1, v4, v5}, Landroid/os/Message;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_7

    :cond_14
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v3

    const-wide v4, 0x10d00000002L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mQuitting:Z

    const-wide v4, 0x10d00000003L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2f

    monitor-exit p0

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :catchall_2f
    move-exception v3

    monitor-exit p0

    throw v3
.end method
