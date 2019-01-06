.class public final Landroid/database/sqlite/SQLiteSession;
.super Ljava/lang/Object;
.source "SQLiteSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteSession$Transaction;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final TRANSACTION_MODE_DEFERRED:I = 0x0

.field public static final TRANSACTION_MODE_EXCLUSIVE:I = 0x2

.field public static final TRANSACTION_MODE_IMMEDIATE:I = 0x1


# instance fields
.field private mConnection:Landroid/database/sqlite/SQLiteConnection;

.field private mConnectionFlags:I

.field private final mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

.field private mConnectionUseCount:I

.field private mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

.field private mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/database/sqlite/SQLiteSession;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/database/sqlite/SQLiteSession;->-assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteConnectionPool;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "connectionPool must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput-object p1, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    return-void
.end method

.method private acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V
    .registers 5

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    if-nez v0, :cond_1c

    sget-boolean v0, Landroid/database/sqlite/SQLiteSession;->-assertionsDisabled:Z

    if-nez v0, :cond_12

    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnectionPool;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    iput p2, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    :cond_1c
    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    return-void
.end method

.method private beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V
    .registers 10

    const/4 v3, 0x0

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    :cond_6
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v2, :cond_d

    invoke-direct {p0, v3, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    :cond_d
    :try_start_d
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v2, :cond_1d

    packed-switch p1, :pswitch_data_60

    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string/jumbo v3, "BEGIN;"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_3e

    :cond_1d
    :goto_1d
    if-eqz p2, :cond_22

    :try_start_1f
    invoke-interface {p2}, Landroid/database/sqlite/SQLiteTransactionListener;->onBegin()V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_22} :catch_51
    .catchall {:try_start_1f .. :try_end_22} :catchall_3e

    :cond_22
    :try_start_22
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteSession;->obtainTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;)Landroid/database/sqlite/SQLiteSession$Transaction;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v2, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_3e

    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v2, :cond_33

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    :cond_33
    return-void

    :pswitch_34
    :try_start_34
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string/jumbo v3, "BEGIN IMMEDIATE;"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3e

    goto :goto_1d

    :catchall_3e
    move-exception v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v3, :cond_46

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    :cond_46
    throw v2

    :pswitch_47
    :try_start_47
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string/jumbo v3, "BEGIN EXCLUSIVE;"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    goto :goto_1d

    :catch_51
    move-exception v0

    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v2, :cond_5f

    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string/jumbo v3, "ROLLBACK;"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    :cond_5f
    throw v0
    :try_end_60
    .catchall {:try_start_47 .. :try_end_60} :catchall_3e

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_34
        :pswitch_47
    .end packed-switch
.end method

.method private endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V
    .registers 11

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    :cond_5
    iget-object v4, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-boolean v5, v4, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-nez v5, :cond_d

    if-eqz p2, :cond_30

    :cond_d
    iget-boolean v5, v4, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    xor-int/lit8 v3, v5, 0x1

    :goto_11
    const/4 v2, 0x0

    iget-object v1, v4, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    if-eqz v1, :cond_1b

    if-eqz v3, :cond_32

    :try_start_18
    invoke-interface {v1}, Landroid/database/sqlite/SQLiteTransactionListener;->onCommit()V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_1b} :catch_36

    :cond_1b
    :goto_1b
    iget-object v5, v4, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    invoke-direct {p0, v4}, Landroid/database/sqlite/SQLiteSession;->recycleTransaction(Landroid/database/sqlite/SQLiteSession$Transaction;)V

    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v5, :cond_3a

    if-nez v3, :cond_2d

    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    :cond_2d
    :goto_2d
    if-eqz v2, :cond_58

    throw v2

    :cond_30
    const/4 v3, 0x0

    goto :goto_11

    :cond_32
    :try_start_32
    invoke-interface {v1}, Landroid/database/sqlite/SQLiteTransactionListener;->onRollback()V
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_1b

    :catch_36
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    goto :goto_1b

    :cond_3a
    if-eqz v3, :cond_49

    :try_start_3c
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string/jumbo v6, "COMMIT;"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, p1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_53

    :goto_45
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    goto :goto_2d

    :cond_49
    :try_start_49
    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    const-string/jumbo v6, "ROLLBACK;"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, p1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_53

    goto :goto_45

    :catchall_53
    move-exception v5

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v5

    :cond_58
    return-void
.end method

.method private executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    :cond_7
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_20

    const/4 v1, 0x0

    return v1

    :pswitch_10
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v3, p3, p4}, Landroid/database/sqlite/SQLiteSession;->beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    return v2

    :pswitch_15
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->setTransactionSuccessful()V

    invoke-virtual {p0, p4}, Landroid/database/sqlite/SQLiteSession;->endTransaction(Landroid/os/CancellationSignal;)V

    return v2

    :pswitch_1c
    invoke-virtual {p0, p4}, Landroid/database/sqlite/SQLiteSession;->endTransaction(Landroid/os/CancellationSignal;)V

    return v2

    :pswitch_data_20
    .packed-switch 0x4
        :pswitch_10
        :pswitch_15
        :pswitch_1c
    .end packed-switch
.end method

.method private obtainTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;)Landroid/database/sqlite/SQLiteSession$Transaction;
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_15

    iget-object v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v2, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-boolean v3, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    iput-boolean v3, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    :goto_10
    iput p1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMode:I

    iput-object p2, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    return-object v0

    :cond_15
    new-instance v0, Landroid/database/sqlite/SQLiteSession$Transaction;

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteSession$Transaction;-><init>(Landroid/database/sqlite/SQLiteSession$Transaction;)V

    goto :goto_10
.end method

.method private recycleTransaction(Landroid/database/sqlite/SQLiteSession$Transaction;)V
    .registers 3

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    iput-object v0, p1, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    iput-object p1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionPool:Landroid/database/sqlite/SQLiteSession$Transaction;

    return-void
.end method

.method private releaseConnection()V
    .registers 4

    const/4 v2, 0x0

    sget-boolean v0, Landroid/database/sqlite/SQLiteSession;->-assertionsDisabled:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    sget-boolean v0, Landroid/database/sqlite/SQLiteSession;->-assertionsDisabled:Z

    if-nez v0, :cond_1d

    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    if-gtz v0, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1d
    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionUseCount:I

    if-nez v0, :cond_2e

    :try_start_25
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->releaseConnection(Landroid/database/sqlite/SQLiteConnection;)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2f

    iput-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    :cond_2e
    return-void

    :catchall_2f
    move-exception v0

    iput-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    throw v0
.end method

.method private throwIfNestedTransaction()V
    .registers 3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteSession;->hasNestedTransaction()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot perform this operation because a nested transaction is in progress."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method

.method private throwIfNoTransaction()V
    .registers 3

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot perform this operation because there is no current transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return-void
.end method

.method private throwIfTransactionMarkedSuccessful()V
    .registers 3

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot perform this operation because the transaction has already been marked successful.  The only thing you can do now is call endTransaction()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    return-void
.end method

.method private yieldTransactionUnchecked(JLandroid/os/CancellationSignal;)Z
    .registers 13

    const/4 v7, 0x1

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    :cond_6
    iget-object v4, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    iget v6, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteConnectionPool;->shouldYieldConnection(Landroid/database/sqlite/SQLiteConnection;I)Z

    move-result v4

    if-nez v4, :cond_14

    const/4 v4, 0x0

    return v4

    :cond_14
    iget-object v4, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget v3, v4, Landroid/database/sqlite/SQLiteSession$Transaction;->mMode:I

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-object v2, v4, Landroid/database/sqlite/SQLiteSession$Transaction;->mListener:Landroid/database/sqlite/SQLiteTransactionListener;

    iget v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnectionFlags:I

    invoke-direct {p0, p3, v7}, Landroid/database/sqlite/SQLiteSession;->endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_2a

    :try_start_27
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_2e

    :cond_2a
    :goto_2a
    invoke-direct {p0, v3, v2, v0, p3}, Landroid/database/sqlite/SQLiteSession;->beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    return v7

    :catch_2e
    move-exception v1

    goto :goto_2a
.end method


# virtual methods
.method public beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V
    .registers 5

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->beginTransactionUnchecked(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V

    return-void
.end method

.method public endTransaction(Landroid/os/CancellationSignal;)V
    .registers 3

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    sget-boolean v0, Landroid/database/sqlite/SQLiteSession;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteSession;->endTransactionUnchecked(Landroid/os/CancellationSignal;Z)V

    return-void
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)V
    .registers 7

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    :cond_12
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    :try_start_15
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1e

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    return-void

    :catchall_1e
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 7

    const/4 v1, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-object v1

    :cond_13
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    :try_start_16
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_20

    move-result-object v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    return-object v0

    :catchall_20
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)I
    .registers 7

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    return v0

    :cond_13
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    :try_start_16
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)I
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_20

    move-result v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    return v0

    :catchall_20
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZILandroid/os/CancellationSignal;)I
    .registers 19

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "sql must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    if-nez p3, :cond_16

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "window must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    move/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p3}, Landroid/database/CursorWindow;->clear()V

    const/4 v2, 0x0

    return v2

    :cond_25
    move/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    :try_start_2c
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_3f

    move-result v2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    return v2

    :catchall_3f
    move-exception v2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v2
.end method

.method public executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)J
    .registers 7

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_14
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    :try_start_17
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_21

    move-result-wide v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    return-wide v0

    :catchall_21
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public executeForLong(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)J
    .registers 7

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_14
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    :try_start_17
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_21

    move-result-wide v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    return-wide v0

    :catchall_21
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public executeForString(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-object v1

    :cond_13
    invoke-direct {p0, p1, p3, p4}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    :try_start_16
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_20

    move-result-object v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    return-object v0

    :catchall_20
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public hasConnection()Z
    .registers 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasNestedTransaction()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public hasTransaction()Z
    .registers 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public prepare(Ljava/lang/String;ILandroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteStatementInfo;)V
    .registers 7

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-eqz p3, :cond_10

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    :cond_10
    invoke-direct {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)V

    :try_start_13
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p4}, Landroid/database/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatementInfo;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    return-void

    :catchall_1c
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public setTransactionSuccessful()V
    .registers 3

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    return-void
.end method

.method public yieldTransaction(JZLandroid/os/CancellationSignal;)Z
    .registers 8

    const/4 v1, 0x0

    if-eqz p3, :cond_1a

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNoTransaction()V

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession;->throwIfNestedTransaction()V

    :cond_c
    sget-boolean v0, Landroid/database/sqlite/SQLiteSession;->-assertionsDisabled:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mConnection:Landroid/database/sqlite/SQLiteConnection;

    if-nez v0, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1a
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mParent:Landroid/database/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_c

    :cond_2a
    return v1

    :cond_2b
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSession;->mTransactionStack:Landroid/database/sqlite/SQLiteSession$Transaction;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    if-eqz v0, :cond_32

    return v1

    :cond_32
    invoke-direct {p0, p1, p2, p4}, Landroid/database/sqlite/SQLiteSession;->yieldTransactionUnchecked(JLandroid/os/CancellationSignal;)Z

    move-result v0

    return v0
.end method
