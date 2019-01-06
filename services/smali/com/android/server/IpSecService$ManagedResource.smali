.class abstract Lcom/android/server/IpSecService$ManagedResource;
.super Ljava/lang/Object;
.source "IpSecService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ManagedResource"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mResourceId:I

.field final pid:I

.field final synthetic this$0:Lcom/android/server/IpSecService;

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;)V
    .registers 7

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/IpSecService$ManagedResource;->this$0:Lcom/android/server/IpSecService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/IpSecService$ManagedResource;->mReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/android/server/IpSecService$ManagedResource;->mBinder:Landroid/os/IBinder;

    iput p2, p0, Lcom/android/server/IpSecService$ManagedResource;->mResourceId:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/IpSecService$ManagedResource;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/IpSecService$ManagedResource;->uid:I

    :try_start_1d
    iget-object v1, p0, Lcom/android/server/IpSecService$ManagedResource;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_23} :catch_24

    :goto_23
    return-void

    :catch_24
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/IpSecService$ManagedResource;->binderDied()V

    goto :goto_23
.end method


# virtual methods
.method public addReference()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/IpSecService$ManagedResource;->mReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final binderDied()V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/IpSecService$ManagedResource;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string/jumbo v1, "IpSecService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to release resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public checkOwnerOrSystemAndThrow()V
    .registers 3

    iget v0, p0, Lcom/android/server/IpSecService$ManagedResource;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq v0, v1, :cond_19

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v1, v0, :cond_19

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Only the owner may access managed resources!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    return-void
.end method

.method public isReferenced()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/IpSecService$ManagedResource;->mReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public final release()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/IpSecService$ManagedResource;->this$0:Lcom/android/server/IpSecService;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/IpSecService$ManagedResource;->isReferenced()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot release a resource that has active references!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_15
    :try_start_15
    iget v0, p0, Lcom/android/server/IpSecService$ManagedResource;->mResourceId:I
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_12

    if-nez v0, :cond_1b

    monitor-exit v1

    return-void

    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/IpSecService$ManagedResource;->releaseResources()V

    iget-object v0, p0, Lcom/android/server/IpSecService$ManagedResource;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/IpSecService$ManagedResource;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/IpSecService$ManagedResource;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/IpSecService$ManagedResource;->mResourceId:I
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_12

    monitor-exit v1

    return-void
.end method

.method protected abstract releaseResources()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public removeReference()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/IpSecService$ManagedResource;->mReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gez v0, :cond_11

    const-string/jumbo v0, "IpSecService"

    const-string/jumbo v1, "Programming error: negative reference count"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void
.end method
