.class public Lcom/android/internal/os/FuseAppLoop;
.super Ljava/lang/Object;
.source "FuseAppLoop.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/FuseAppLoop$1;,
        Lcom/android/internal/os/FuseAppLoop$Args;,
        Lcom/android/internal/os/FuseAppLoop$BytesMap;,
        Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;,
        Lcom/android/internal/os/FuseAppLoop$CallbackEntry;,
        Lcom/android/internal/os/FuseAppLoop$UnmountedException;
    }
.end annotation


# static fields
.field private static final ARGS_POOL_SIZE:I = 0x32

.field private static final DEBUG:Z

.field private static final FUSE_FSYNC:I = 0x14

.field private static final FUSE_GETATTR:I = 0x3

.field private static final FUSE_LOOKUP:I = 0x1

.field private static final FUSE_MAX_WRITE:I = 0x40000

.field private static final FUSE_OK:I = 0x0

.field private static final FUSE_OPEN:I = 0xe

.field private static final FUSE_READ:I = 0xf

.field private static final FUSE_RELEASE:I = 0x12

.field private static final FUSE_WRITE:I = 0x10

.field private static final MIN_INODE:I = 0x2

.field public static final ROOT_INODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FuseAppLoop"

.field private static final sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mArgsPool:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/os/FuseAppLoop$Args;",
            ">;"
        }
    .end annotation
.end field

.field private final mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mCallbackMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/FuseAppLoop$CallbackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mInstance:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMountPointId:I

.field private mNextInode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "FuseAppLoop"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/FuseAppLoop;->DEBUG:Z

    new-instance v0, Lcom/android/internal/os/FuseAppLoop$1;

    invoke-direct {v0}, Lcom/android/internal/os/FuseAppLoop$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/FuseAppLoop;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;Ljava/util/concurrent/ThreadFactory;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-direct {v0, v1}, Lcom/android/internal/os/FuseAppLoop$BytesMap;-><init>(Lcom/android/internal/os/FuseAppLoop$BytesMap;)V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    iput p1, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    if-nez p3, :cond_29

    sget-object p3, Lcom/android/internal/os/FuseAppLoop;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    :cond_29
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/FuseAppLoop;->native_new(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    new-instance v0, Lcom/android/internal/os/-$Lambda$7ZK-l4tRY1lJoOPMxlJZMSKtyQY;

    invoke-direct {v0, p0}, Lcom/android/internal/os/-$Lambda$7ZK-l4tRY1lJoOPMxlJZMSKtyQY;-><init>(Ljava/lang/Object;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static checkInode(J)I
    .registers 10

    const-wide/16 v2, 0x2

    const-wide/32 v4, 0x7fffffff

    const-string/jumbo v6, "checkInode"

    move-wide v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    long-to-int v0, p0

    return v0
.end method

.method private getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Lcom/android/internal/os/FuseAppLoop;->checkInode(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    if-nez v0, :cond_19

    new-instance v1, Landroid/system/ErrnoException;

    const-string/jumbo v2, "getCallbackEntryOrThrowLocked"

    sget v3, Landroid/system/OsConstants;->ENOENT:I

    invoke-direct {v1, v2, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_19
    return-object v0
.end method

.method private static getError(Ljava/lang/Exception;)I
    .registers 3

    instance-of v1, p0, Landroid/system/ErrnoException;

    if-eqz v1, :cond_e

    check-cast p0, Landroid/system/ErrnoException;

    iget v0, p0, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ENOSYS:I

    if-eq v0, v1, :cond_e

    neg-int v1, v0

    return v1

    :cond_e
    sget v1, Landroid/system/OsConstants;->EBADF:I

    neg-int v1, v1

    return v1
.end method

.method private onCommand(IJJJI[B)V
    .registers 18

    iget-object v4, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_4e

    new-instance v1, Lcom/android/internal/os/FuseAppLoop$Args;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/internal/os/FuseAppLoop$Args;-><init>(Lcom/android/internal/os/FuseAppLoop$Args;)V

    :goto_11
    iput-wide p2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->unique:J

    iput-wide p4, v1, Lcom/android/internal/os/FuseAppLoop$Args;->inode:J

    iput-wide p6, v1, Lcom/android/internal/os/FuseAppLoop$Args;->offset:J

    move/from16 v0, p8

    iput v0, v1, Lcom/android/internal/os/FuseAppLoop$Args;->size:I

    move-object/from16 v0, p9

    iput-object v0, v1, Lcom/android/internal/os/FuseAppLoop$Args;->data:[B

    invoke-direct {p0, p4, p5}, Lcom/android/internal/os/FuseAppLoop;->getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v3, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v3, v3, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    iget-object v5, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v5, v5, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, p1, v6, v7, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    if-nez v3, :cond_4c

    new-instance v3, Landroid/system/ErrnoException;

    const-string/jumbo v5, "onCommand"

    sget v6, Landroid/system/OsConstants;->EBADF:I

    invoke-direct {v3, v5, v6}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_44} :catch_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_57

    :catch_44
    move-exception v2

    :try_start_45
    invoke-static {v2}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v3

    invoke-direct {p0, p2, p3, v3}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_57

    :cond_4c
    monitor-exit v4

    return-void

    :cond_4e
    :try_start_4e
    iget-object v3, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/FuseAppLoop$Args;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_56} :catch_44
    .catchall {:try_start_4e .. :try_end_56} :catchall_57

    goto :goto_11

    :catchall_57
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private onOpen(JJ)[B
    .registers 16

    iget-object v9, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_3
    invoke-direct {p0, p3, p4}, Lcom/android/internal/os/FuseAppLoop;->getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->opened:Z

    if-eqz v1, :cond_21

    new-instance v1, Landroid/system/ErrnoException;

    const-string/jumbo v2, "onOpen"

    sget v3, Landroid/system/OsConstants;->EMFILE:I

    invoke-direct {v1, v2, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_16} :catch_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_40

    :catch_16
    move-exception v8

    :try_start_17
    invoke-static {v8}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_40

    :cond_1e
    const/4 v1, 0x0

    monitor-exit v9

    return-object v1

    :cond_21
    :try_start_21
    iget-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1e

    iget-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/FuseAppLoop;->native_replyOpen(JJJ)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->opened:Z

    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v0}, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->startUsing(J)[B
    :try_end_3d
    .catch Landroid/system/ErrnoException; {:try_start_21 .. :try_end_3d} :catch_16
    .catchall {:try_start_21 .. :try_end_3d} :catchall_40

    move-result-object v1

    monitor-exit v9

    return-object v1

    :catchall_40
    move-exception v1

    monitor-exit v9

    throw v1
.end method

.method private recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method private replySimpleLocked(JI)V
    .registers 11

    iget-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    iget-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    :cond_10
    return-void
.end method


# virtual methods
.method public getMountPointId()I
    .registers 2

    iget v0, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 40

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/os/FuseAppLoop$Args;

    iget-object v14, v4, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-wide v10, v4, Lcom/android/internal/os/FuseAppLoop$Args;->inode:J

    iget-wide v8, v4, Lcom/android/internal/os/FuseAppLoop$Args;->unique:J

    iget v0, v4, Lcom/android/internal/os/FuseAppLoop$Args;->size:I

    move/from16 v35, v0

    iget-wide v0, v4, Lcom/android/internal/os/FuseAppLoop$Args;->offset:J

    move-wide/from16 v36, v0

    iget-object v0, v4, Lcom/android/internal/os/FuseAppLoop$Args;->data:[B

    move-object/from16 v21, v0

    :try_start_18
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_18a

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown FUSE command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3d} :catch_3d

    :catch_3d
    move-exception v22

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_43
    const-string/jumbo v5, "FuseAppLoop"

    const-string/jumbo v7, ""

    move-object/from16 v0, v22

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static/range {v22 .. v22}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v5}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    :try_end_5c
    .catchall {:try_start_43 .. :try_end_5c} :catchall_186

    monitor-exit v6

    :goto_5d
    const/4 v5, 0x1

    return v5

    :sswitch_5f
    :try_start_5f
    iget-object v5, v14, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v5}, Landroid/os/ProxyFileDescriptorCallback;->onGetSize()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6a} :catch_3d

    :try_start_6a
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v16, 0x0

    cmp-long v5, v6, v16

    if-eqz v5, :cond_7d

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v13}, Lcom/android/internal/os/FuseAppLoop;->native_replyLookup(JJJJ)V

    :cond_7d
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    :try_end_82
    .catchall {:try_start_6a .. :try_end_82} :catchall_84

    :try_start_82
    monitor-exit v15

    goto :goto_5d

    :catchall_84
    move-exception v5

    monitor-exit v15

    throw v5

    :sswitch_87
    iget-object v5, v14, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v5}, Landroid/os/ProxyFileDescriptorCallback;->onGetSize()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_92} :catch_3d

    :try_start_92
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v16, 0x0

    cmp-long v5, v6, v16

    if-eqz v5, :cond_a5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v13}, Lcom/android/internal/os/FuseAppLoop;->native_replyGetAttr(JJJJ)V

    :cond_a5
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    :try_end_aa
    .catchall {:try_start_92 .. :try_end_aa} :catchall_ac

    :try_start_aa
    monitor-exit v15

    goto :goto_5d

    :catchall_ac
    move-exception v5

    monitor-exit v15

    throw v5

    :sswitch_af
    iget-object v5, v14, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    move-wide/from16 v0, v36

    move/from16 v2, v35

    move-object/from16 v3, v21

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/os/ProxyFileDescriptorCallback;->onRead(JI[B)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_c0} :catch_3d

    :try_start_c0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v5, v16, v18

    if-eqz v5, :cond_d9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-wide/from16 v16, v0

    move-object/from16 v15, p0

    move-wide/from16 v18, v8

    invoke-virtual/range {v15 .. v21}, Lcom/android/internal/os/FuseAppLoop;->native_replyRead(JJI[B)V

    :cond_d9
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    :try_end_de
    .catchall {:try_start_c0 .. :try_end_de} :catchall_e1

    :try_start_de
    monitor-exit v6

    goto/16 :goto_5d

    :catchall_e1
    move-exception v5

    monitor-exit v6

    throw v5

    :sswitch_e4
    iget-object v5, v14, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    move-wide/from16 v0, v36

    move/from16 v2, v35

    move-object/from16 v3, v21

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/os/ProxyFileDescriptorCallback;->onWrite(JI[B)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_f5} :catch_3d

    :try_start_f5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v5, v16, v18

    if-eqz v5, :cond_10e

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-wide/from16 v24, v0

    move-object/from16 v23, p0

    move-wide/from16 v26, v8

    invoke-virtual/range {v23 .. v28}, Lcom/android/internal/os/FuseAppLoop;->native_replyWrite(JJI)V

    :cond_10e
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    :try_end_113
    .catchall {:try_start_f5 .. :try_end_113} :catchall_116

    :try_start_113
    monitor-exit v6

    goto/16 :goto_5d

    :catchall_116
    move-exception v5

    monitor-exit v6

    throw v5

    :sswitch_119
    iget-object v5, v14, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v5}, Landroid/os/ProxyFileDescriptorCallback;->onFsync()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_123} :catch_3d

    :try_start_123
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v5, v16, v18

    if-eqz v5, :cond_13e

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-wide/from16 v30, v0

    const/16 v34, 0x0

    move-object/from16 v29, p0

    move-wide/from16 v32, v8

    invoke-virtual/range {v29 .. v34}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    :cond_13e
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    :try_end_143
    .catchall {:try_start_123 .. :try_end_143} :catchall_146

    :try_start_143
    monitor-exit v6

    goto/16 :goto_5d

    :catchall_146
    move-exception v5

    monitor-exit v6

    throw v5

    :sswitch_149
    iget-object v5, v14, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v5}, Landroid/os/ProxyFileDescriptorCallback;->onRelease()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_153} :catch_3d

    :try_start_153
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v5, v16, v18

    if-eqz v5, :cond_16e

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-wide/from16 v30, v0

    const/16 v34, 0x0

    move-object/from16 v29, p0

    move-wide/from16 v32, v8

    invoke-virtual/range {v29 .. v34}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    :cond_16e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v14}, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->getThreadId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->stopUsing(J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    :try_end_180
    .catchall {:try_start_153 .. :try_end_180} :catchall_183

    :try_start_180
    monitor-exit v6

    goto/16 :goto_5d

    :catchall_183
    move-exception v5

    monitor-exit v6

    throw v5
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_186} :catch_3d

    :catchall_186
    move-exception v5

    monitor-exit v6

    throw v5

    nop

    :sswitch_data_18a
    .sparse-switch
        0x1 -> :sswitch_5f
        0x3 -> :sswitch_87
        0xf -> :sswitch_af
        0x10 -> :sswitch_e4
        0x12 -> :sswitch_149
        0x14 -> :sswitch_119
    .end sparse-switch
.end method

.method synthetic lambda$-com_android_internal_os_FuseAppLoop_2801()V
    .registers 5

    iget-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/FuseAppLoop;->native_start(J)V

    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/FuseAppLoop;->native_delete(J)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v0}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->clear()V
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_18

    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method native native_delete(J)V
.end method

.method native native_new(I)J
.end method

.method native native_replyGetAttr(JJJJ)V
.end method

.method native native_replyLookup(JJJJ)V
.end method

.method native native_replyOpen(JJJ)V
.end method

.method native native_replyRead(JJI[B)V
.end method

.method native native_replySimple(JJI)V
.end method

.method native native_replyWrite(JJI)V
.end method

.method native native_start(J)V
.end method

.method public registerCallback(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_5
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const v5, 0x7ffffffd

    if-ge v3, v5, :cond_4e

    move v3, v1

    :goto_17
    const-string/jumbo v5, "Too many opened files."

    invoke-static {v3, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-eqz v3, :cond_50

    :goto_35
    const-string/jumbo v2, "Handler must be different from the current thread"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-nez v1, :cond_52

    new-instance v1, Lcom/android/internal/os/FuseUnavailableMountException;

    iget v2, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    invoke-direct {v1, v2}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v1
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_4e
    move v3, v2

    goto :goto_17

    :cond_50
    move v1, v2

    goto :goto_35

    :cond_52
    :try_start_52
    iget v0, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    iget v1, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    iget v1, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    if-gez v1, :cond_61

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    :cond_61
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_52

    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v2, p1, v3}, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;-><init>(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_7c
    .catchall {:try_start_52 .. :try_end_7c} :catchall_4b

    monitor-exit v4

    return v0
.end method

.method public unregisterCallback(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
