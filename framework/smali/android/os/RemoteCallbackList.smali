.class public Landroid/os/RemoteCallbackList;
.super Ljava/lang/Object;
.source "RemoteCallbackList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RemoteCallbackList$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteCallbackList"


# instance fields
.field private mActiveBroadcast:[Ljava/lang/Object;

.field private mBroadcastCount:I

.field mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/os/RemoteCallbackList",
            "<TE;>.Callback;>;"
        }
    .end annotation
.end field

.field private mKilled:Z

.field private mRecentCallers:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/RemoteCallbackList;->mKilled:Z

    return-void
.end method

.method private logExcessiveCallbacks()V
    .registers 15

    const-wide/16 v12, 0xbb8

    const-wide/16 v10, 0x3e8

    const/4 v9, 0x0

    iget-object v6, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    int-to-long v4, v6

    const-wide/16 v2, 0xbb8

    const-wide/16 v0, 0x3e8

    cmp-long v6, v4, v12

    if-ltz v6, :cond_70

    cmp-long v6, v4, v12

    if-nez v6, :cond_23

    iget-object v6, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    if-nez v6, :cond_23

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v6, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    :cond_23
    iget-object v6, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    if-eqz v6, :cond_70

    iget-object v6, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v6, v10

    if-gez v6, :cond_70

    iget-object v6, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v6, v10

    if-ltz v6, :cond_70

    const-string/jumbo v6, "RemoteCallbackList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "More than 3000 remote callbacks registered. Recent callers:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v9, p0, Landroid/os/RemoteCallbackList;->mRecentCallers:Ljava/lang/StringBuilder;

    :cond_70
    return-void
.end method


# virtual methods
.method public beginBroadcast()I
    .registers 7

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v4

    :try_start_4
    iget v3, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    if-lez v3, :cond_14

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "beginBroadcast() called while already in a broadcast"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_14
    :try_start_14
    iget-object v3, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iput v0, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_11

    if-gtz v0, :cond_20

    monitor-exit v4

    return v5

    :cond_20
    :try_start_20
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    if-eqz v1, :cond_27

    array-length v3, v1

    if-ge v3, v0, :cond_2b

    :cond_27
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v0, :cond_39

    iget-object v3, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_11

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_39
    monitor-exit v4

    return v0
.end method

.method public broadcast(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<TE;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_11

    :try_start_7
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_15

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catchall_15
    move-exception v2

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2
.end method

.method public finishBroadcast()V
    .registers 7

    iget-object v4, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v4

    :try_start_3
    iget v3, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    if-gez v3, :cond_13

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "finishBroadcast() called outside of a broadcast"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    if-eqz v1, :cond_22

    iget v0, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_22

    const/4 v3, 0x0

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_22
    const/4 v3, -0x1

    iput v3, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_10

    monitor-exit v4

    return-void
.end method

.method public getBroadcastCookie(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Landroid/os/RemoteCallbackList$Callback;

    iget-object v0, v0, Landroid/os/RemoteCallbackList$Callback;->mCookie:Ljava/lang/Object;

    return-object v0
.end method

.method public getBroadcastItem(I)Landroid/os/IInterface;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Landroid/os/RemoteCallbackList$Callback;

    iget-object v0, v0, Landroid/os/RemoteCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    return-object v0
.end method

.method public getRegisteredCallbackCookie(I)Ljava/lang/Object;
    .registers 4

    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Landroid/os/RemoteCallbackList;->mKilled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_16

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    :cond_a
    :try_start_a
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList$Callback;

    iget-object v0, v0, Landroid/os/RemoteCallbackList$Callback;->mCookie:Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getRegisteredCallbackCount()I
    .registers 3

    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Landroid/os/RemoteCallbackList;->mKilled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_12

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :cond_a
    :try_start_a
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_12

    move-result v0

    monitor-exit v1

    return v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getRegisteredCallbackItem(I)Landroid/os/IInterface;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Landroid/os/RemoteCallbackList;->mKilled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_16

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    :cond_a
    :try_start_a
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList$Callback;

    iget-object v0, v0, Landroid/os/RemoteCallbackList$Callback;->mCallback:Landroid/os/IInterface;
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public kill()V
    .registers 6

    iget-object v3, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_b
    if-ltz v1, :cond_22

    iget-object v2, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList$Callback;

    iget-object v2, v0, Landroid/os/RemoteCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_22
    iget-object v2, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/os/RemoteCallbackList;->mKilled:Z
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2c

    monitor-exit v3

    return-void

    :catchall_2c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onCallbackDied(Landroid/os/IInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    return-void
.end method

.method public onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;)V

    return-void
.end method

.method public register(Landroid/os/IInterface;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v4

    :try_start_4
    iget-boolean v3, p0, Landroid/os/RemoteCallbackList;->mKilled:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_25

    if-eqz v3, :cond_a

    monitor-exit v4

    return v5

    :cond_a
    :try_start_a
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;->logExcessiveCallbacks()V

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_25

    move-result-object v0

    :try_start_11
    new-instance v1, Landroid/os/RemoteCallbackList$Callback;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/RemoteCallbackList$Callback;-><init>(Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v3, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1f} :catch_22
    .catchall {:try_start_11 .. :try_end_1f} :catchall_25

    const/4 v3, 0x1

    monitor-exit v4

    return v3

    :catch_22
    move-exception v2

    monitor-exit v4

    return v5

    :catchall_25
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public unregister(Landroid/os/IInterface;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList$Callback;

    if-eqz v0, :cond_1f

    iget-object v1, v0, Landroid/os/RemoteCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_21

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_1f
    monitor-exit v2

    return v4

    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1
.end method
