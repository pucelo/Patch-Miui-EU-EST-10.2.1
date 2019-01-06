.class public Landroid/os/UpdateLock;
.super Ljava/lang/Object;
.source "UpdateLock.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final NOW_IS_CONVENIENT:Ljava/lang/String; = "nowisconvenient"

.field private static final TAG:Ljava/lang/String; = "UpdateLock"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final UPDATE_LOCK_CHANGED:Ljava/lang/String; = "android.os.UpdateLock.UPDATE_LOCK_CHANGED"

.field private static sService:Landroid/os/IUpdateLock;


# instance fields
.field mCount:I

.field mHeld:Z

.field mRefCounted:Z

.field final mTag:Ljava/lang/String;

.field mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/os/UpdateLock;->mCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/UpdateLock;->mRefCounted:Z

    iput-boolean v1, p0, Landroid/os/UpdateLock;->mHeld:Z

    iput-object p1, p0, Landroid/os/UpdateLock;->mTag:Ljava/lang/String;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method private acquireLocked()V
    .registers 5

    iget-boolean v1, p0, Landroid/os/UpdateLock;->mRefCounted:Z

    if-eqz v1, :cond_c

    iget v1, p0, Landroid/os/UpdateLock;->mCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/os/UpdateLock;->mCount:I

    if-nez v1, :cond_1c

    :cond_c
    sget-object v1, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    if-eqz v1, :cond_19

    :try_start_10
    sget-object v1, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    iget-object v2, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/os/UpdateLock;->mTag:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/os/IUpdateLock;->acquireUpdateLock(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1d

    :cond_19
    :goto_19
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/UpdateLock;->mHeld:Z

    :cond_1c
    return-void

    :catch_1d
    move-exception v0

    const-string/jumbo v1, "UpdateLock"

    const-string/jumbo v2, "Unable to contact service to acquire"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method private static checkService()V
    .registers 1

    sget-object v0, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    if-nez v0, :cond_11

    const-string/jumbo v0, "updatelock"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUpdateLock$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateLock;

    move-result-object v0

    sput-object v0, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    :cond_11
    return-void
.end method

.method private releaseLocked()V
    .registers 5

    const/4 v3, 0x0

    iget-boolean v1, p0, Landroid/os/UpdateLock;->mRefCounted:Z

    if-eqz v1, :cond_d

    iget v1, p0, Landroid/os/UpdateLock;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/os/UpdateLock;->mCount:I

    if-nez v1, :cond_1a

    :cond_d
    sget-object v1, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    if-eqz v1, :cond_18

    :try_start_11
    sget-object v1, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    iget-object v2, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/os/IUpdateLock;->releaseUpdateLock(Landroid/os/IBinder;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_27

    :cond_18
    :goto_18
    iput-boolean v3, p0, Landroid/os/UpdateLock;->mHeld:Z

    :cond_1a
    iget v1, p0, Landroid/os/UpdateLock;->mCount:I

    if-gez v1, :cond_32

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "UpdateLock under-locked"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_27
    move-exception v0

    const-string/jumbo v1, "UpdateLock"

    const-string/jumbo v2, "Unable to contact service to release"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_32
    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 3

    invoke-static {}, Landroid/os/UpdateLock;->checkService()V

    iget-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_6
    invoke-direct {p0}, Landroid/os/UpdateLock;->acquireLocked()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v2, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    :try_start_3
    iget-boolean v1, p0, Landroid/os/UpdateLock;->mHeld:Z

    if-eqz v1, :cond_17

    const-string/jumbo v1, "UpdateLock"

    const-string/jumbo v3, "UpdateLock finalized while still held"

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_24

    :try_start_10
    sget-object v1, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    iget-object v3, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v3}, Landroid/os/IUpdateLock;->releaseUpdateLock(Landroid/os/IBinder;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_17} :catch_19
    .catchall {:try_start_10 .. :try_end_17} :catchall_24

    :cond_17
    :goto_17
    monitor-exit v2

    return-void

    :catch_19
    move-exception v0

    :try_start_1a
    const-string/jumbo v1, "UpdateLock"

    const-string/jumbo v3, "Unable to contact service to release"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_24

    goto :goto_17

    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isHeld()Z
    .registers 3

    iget-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/os/UpdateLock;->mHeld:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public release()V
    .registers 3

    invoke-static {}, Landroid/os/UpdateLock;->checkService()V

    iget-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_6
    invoke-direct {p0}, Landroid/os/UpdateLock;->releaseLocked()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setReferenceCounted(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/os/UpdateLock;->mRefCounted:Z

    return-void
.end method
