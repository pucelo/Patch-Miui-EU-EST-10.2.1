.class public Landroid/content/ContentProviderClient;
.super Ljava/lang/Object;
.source "ContentProviderClient.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProviderClient$CursorWrapperInner;,
        Landroid/content/ContentProviderClient$NotRespondingRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentProviderClient"

.field private static sAnrHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "ContentProviderClient.class"
    .end annotation
.end field


# instance fields
.field private mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

.field private mAnrTimeout:J

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContentProvider:Landroid/content/IContentProvider;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mPackageName:Ljava/lang/String;

.field private final mStable:Z


# direct methods
.method static synthetic -get0(Landroid/content/ContentProviderClient;)Landroid/content/IContentProvider;
    .registers 2

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic -get1(Landroid/content/ContentProviderClient;)Landroid/content/ContentResolver;
    .registers 2

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    iput-object p1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v0, p1, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/content/ContentProviderClient;->mStable:Z

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private afterRemote()V
    .registers 3

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method

.method private beforeRemote()V
    .registers 5

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-eqz v0, :cond_d

    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    iget-wide v2, p0, Landroid/content/ContentProviderClient;->mAnrTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    return-void
.end method

.method private closeInternal()Z
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    return v0

    :cond_1c
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    return v0

    :cond_25
    return v2
.end method

.method public static releaseQuietly(Landroid/content/ContentProviderClient;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    const-string/jumbo v1, "operations"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    :try_start_9
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/IContentProvider;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_10
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_10} :catch_15
    .catchall {:try_start_9 .. :try_end_10} :catchall_22

    move-result-object v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    :catch_15
    move-exception v0

    :try_start_16
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_21

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_21
    throw v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "initialValues"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    :try_start_f
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_16
    .catch Landroid/os/DeadObjectException; {:try_start_f .. :try_end_16} :catch_1b
    .catchall {:try_start_f .. :try_end_16} :catchall_28

    move-result v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return v1

    :catch_1b
    move-exception v0

    :try_start_1c
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_27

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_27
    throw v0
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "method"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    :try_start_9
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_10
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_10} :catch_15
    .catchall {:try_start_9 .. :try_end_10} :catchall_22

    move-result-object v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    :catch_15
    move-exception v0

    :try_start_16
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_21

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_21
    throw v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public final canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    :try_start_9
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/IContentProvider;->canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_10
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_10} :catch_15
    .catchall {:try_start_9 .. :try_end_10} :catchall_22

    move-result-object v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    :catch_15
    move-exception v0

    :try_start_16
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_21

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_21
    throw v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public close()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->closeInternal()Z

    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    :try_start_9
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_10} :catch_15
    .catchall {:try_start_9 .. :try_end_10} :catchall_22

    move-result v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return v1

    :catch_15
    move-exception v0

    :try_start_16
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_21

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_21
    throw v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_9
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getLocalContentProvider()Landroid/content/ContentProvider;
    .registers 2

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-static {v0}, Landroid/content/ContentProvider;->coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "mimeTypeFilter"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    :try_start_f
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1, p1, p2}, Landroid/content/IContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_14
    .catch Landroid/os/DeadObjectException; {:try_start_f .. :try_end_14} :catch_19
    .catchall {:try_start_f .. :try_end_14} :catchall_26

    move-result-object v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    :catch_19
    move-exception v0

    :try_start_1a
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_25

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_25
    throw v0
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    :try_start_9
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1, p1}, Landroid/content/IContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_e
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_e} :catch_13
    .catchall {:try_start_9 .. :try_end_e} :catchall_20

    move-result-object v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    :catch_13
    move-exception v0

    :try_start_14
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_1f

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_1f
    throw v0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    :try_start_9
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_10
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_10} :catch_15
    .catchall {:try_start_9 .. :try_end_10} :catchall_22

    move-result-object v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    :catch_15
    move-exception v0

    :try_start_16
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_21

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_21
    throw v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string/jumbo v2, "url"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "mode"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    const/4 v1, 0x0

    if-eqz p3, :cond_1e

    :try_start_12
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    :cond_1e
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2, v1}, Landroid/content/IContentProvider;->openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_25
    .catch Landroid/os/DeadObjectException; {:try_start_12 .. :try_end_25} :catch_2a
    .catchall {:try_start_12 .. :try_end_25} :catchall_37

    move-result-object v2

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v2

    :catch_2a
    move-exception v0

    :try_start_2b
    iget-boolean v2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v2, :cond_36

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_36
    throw v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v2

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v2
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "mode"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    const/4 v4, 0x0

    if-eqz p3, :cond_1e

    :try_start_12
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v0}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    :cond_1e
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    :try_end_28
    .catch Landroid/os/DeadObjectException; {:try_start_12 .. :try_end_28} :catch_2d
    .catchall {:try_start_12 .. :try_end_28} :catchall_3a

    move-result-object v0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v0

    :catch_2d
    move-exception v6

    :try_start_2e
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v0, :cond_39

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_39
    throw v6
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception v0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public final openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "mimeType"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    const/4 v5, 0x0

    if-eqz p4, :cond_1e

    :try_start_12
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v0}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v5

    invoke-virtual {p4, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    :cond_1e
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_28
    .catch Landroid/os/DeadObjectException; {:try_start_12 .. :try_end_28} :catch_2d
    .catchall {:try_start_12 .. :try_end_28} :catchall_3a

    move-result-object v0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v0

    :catch_2d
    move-exception v6

    :try_start_2e
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v0, :cond_39

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_39
    throw v6
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception v0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x0

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    const/4 v5, 0x0

    if-eqz p4, :cond_19

    :try_start_d
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v0}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v5

    invoke-virtual {p4, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    :cond_19
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_23
    .catch Landroid/os/DeadObjectException; {:try_start_d .. :try_end_23} :catch_33
    .catchall {:try_start_d .. :try_end_23} :catchall_40

    move-result-object v6

    if-nez v6, :cond_2a

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v8

    :cond_2a
    :try_start_2a
    new-instance v0, Landroid/content/ContentProviderClient$CursorWrapperInner;

    invoke-direct {v0, p0, v6}, Landroid/content/ContentProviderClient$CursorWrapperInner;-><init>(Landroid/content/ContentProviderClient;Landroid/database/Cursor;)V
    :try_end_2f
    .catch Landroid/os/DeadObjectException; {:try_start_2a .. :try_end_2f} :catch_33
    .catchall {:try_start_2a .. :try_end_2f} :catchall_40

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v0

    :catch_33
    move-exception v7

    :try_start_34
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v0, :cond_3f

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_3f
    throw v7
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p3, p4, p5}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v2, "url"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    const/4 v1, 0x0

    if-eqz p3, :cond_18

    :try_start_c
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    :cond_18
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2, v1}, Landroid/content/IContentProvider;->refresh(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z
    :try_end_1f
    .catch Landroid/os/DeadObjectException; {:try_start_c .. :try_end_1f} :catch_24
    .catchall {:try_start_c .. :try_end_1f} :catchall_31

    move-result v2

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return v2

    :catch_24
    move-exception v0

    :try_start_25
    iget-boolean v2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v2, :cond_30

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_30
    throw v0
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v2

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v2
.end method

.method public release()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->closeInternal()Z

    move-result v0

    return v0
.end method

.method public setDetectNotResponding(J)V
    .registers 8

    const-class v1, Landroid/content/ContentProviderClient;

    monitor-enter v1

    :try_start_3
    iput-wide p1, p0, Landroid/content/ContentProviderClient;->mAnrTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_2a

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-nez v0, :cond_17

    new-instance v0, Landroid/content/ContentProviderClient$NotRespondingRunnable;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/content/ContentProviderClient$NotRespondingRunnable;-><init>(Landroid/content/ContentProviderClient;Landroid/content/ContentProviderClient$NotRespondingRunnable;)V

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    :cond_17
    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    if-nez v0, :cond_28

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    sput-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2e

    :cond_28
    :goto_28
    monitor-exit v1

    return-void

    :cond_2a
    const/4 v0, 0x0

    :try_start_2b
    iput-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_2e

    goto :goto_28

    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    :try_start_9
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/IContentProvider;->uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_10
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_10} :catch_15
    .catchall {:try_start_9 .. :try_end_10} :catchall_22

    move-result-object v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    :catch_15
    move-exception v0

    :try_start_16
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_21

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_21
    throw v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    :try_start_9
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_14} :catch_19
    .catchall {:try_start_9 .. :try_end_14} :catchall_26

    move-result v0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return v0

    :catch_19
    move-exception v6

    :try_start_1a
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    :cond_25
    throw v6
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method
