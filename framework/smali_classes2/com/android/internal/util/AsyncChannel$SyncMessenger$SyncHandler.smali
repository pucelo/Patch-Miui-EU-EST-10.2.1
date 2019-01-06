.class Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;
.super Landroid/os/Handler;
.source "AsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/AsyncChannel$SyncMessenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncHandler"
.end annotation


# instance fields
.field private mLockObject:Ljava/lang/Object;

.field private mResultMsg:Landroid/os/Message;

.field final synthetic this$1:Lcom/android/internal/util/AsyncChannel$SyncMessenger;


# direct methods
.method static synthetic -get0(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mLockObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Landroid/os/Message;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mResultMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)Landroid/os/Message;
    .registers 2

    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mResultMsg:Landroid/os/Message;

    return-object p1
.end method

.method private constructor <init>(Lcom/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->this$1:Lcom/android/internal/util/AsyncChannel$SyncMessenger;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mLockObject:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;-><init>(Lcom/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mLockObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_a
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mResultMsg:Landroid/os/Message;

    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mLockObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_13

    monitor-exit v2

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v2

    throw v1
.end method
