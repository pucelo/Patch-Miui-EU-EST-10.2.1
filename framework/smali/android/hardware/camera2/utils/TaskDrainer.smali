.class public Landroid/hardware/camera2/utils/TaskDrainer;
.super Ljava/lang/Object;
.source "TaskDrainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskDrainer"


# instance fields
.field private final DEBUG:Z

.field private mDrainFinished:Z

.field private mDraining:Z

.field private final mEarlyFinishedTaskSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

.field private final mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private final mTaskSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/utils/TaskDrainer;)Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mListener:Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->DEBUG:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mTaskSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mEarlyFinishedTaskSet:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mLock:Ljava/lang/Object;

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDrainFinished:Z

    const-string/jumbo v0, "handler must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "listener must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mListener:Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->DEBUG:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mTaskSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mEarlyFinishedTaskSet:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mLock:Ljava/lang/Object;

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDrainFinished:Z

    const-string/jumbo v0, "handler must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "listener must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    iput-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mListener:Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    iput-object p3, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mName:Ljava/lang/String;

    return-void
.end method

.method private checkIfDrainFinished()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mTaskSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDrainFinished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDrainFinished:Z

    invoke-direct {p0}, Landroid/hardware/camera2/utils/TaskDrainer;->postDrained()V

    :cond_18
    return-void
.end method

.method private postDrained()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/camera2/utils/TaskDrainer$1;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/utils/TaskDrainer$1;-><init>(Landroid/hardware/camera2/utils/TaskDrainer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public beginDrain()V
    .registers 3

    iget-object v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    invoke-direct {p0}, Landroid/hardware/camera2/utils/TaskDrainer;->checkIfDrainFinished()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public taskFinished(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mTaskSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mEarlyFinishedTaskSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " was already finished"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_37
    :try_start_37
    invoke-direct {p0}, Landroid/hardware/camera2/utils/TaskDrainer;->checkIfDrainFinished()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_34

    monitor-exit v1

    return-void
.end method

.method public taskStarted(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v1, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mDraining:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can\'t start more tasks after draining has begun"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_13
    :try_start_13
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mEarlyFinishedTaskSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer;->mTaskSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " was already started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_44
    .catchall {:try_start_13 .. :try_end_44} :catchall_10

    :cond_44
    monitor-exit v1

    return-void
.end method
