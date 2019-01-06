.class final Landroid/database/sqlite/SQLiteConnection$OperationLog;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OperationLog"
.end annotation


# static fields
.field private static final COOKIE_GENERATION_SHIFT:I = 0x8

.field private static final COOKIE_INDEX_MASK:I = 0xff

.field private static final MAX_RECENT_OPERATIONS:I = 0x14


# instance fields
.field private mGeneration:I

.field private mIndex:I

.field private final mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [Landroid/database/sqlite/SQLiteConnection$Operation;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    return-void
.end method

.method synthetic constructor <init>(Landroid/database/sqlite/SQLiteConnection$OperationLog;)V
    .registers 2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;-><init>()V

    return-void
.end method

.method private endOperationDeferLogLocked(I)Z
    .registers 8

    const-wide/32 v4, 0x100000

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection$Operation;->-wrap1(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    sget-boolean v2, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOG_SLOW_QUERIES:Z

    if-eqz v2, :cond_2f

    iget-wide v2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    iget-wide v4, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteDebug;->shouldLogSlowQuery(J)Z

    move-result v1

    :cond_2f
    return v1

    :cond_30
    return v1
.end method

.method private getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;
    .registers 5

    and-int/lit16 v0, p1, 0xff

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v1, v2, v0

    iget v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    if-ne v2, p1, :cond_b

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private logOperationLocked(ILjava/lang/String;)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    if-eqz p2, :cond_19

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    const-string/jumbo v2, "SQLiteConnection"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private newOperationCookieLocked(I)I
    .registers 4

    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    shl-int/lit8 v1, v0, 0x8

    or-int/2addr v1, p1

    return v1
.end method


# virtual methods
.method public beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 14

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v5

    :try_start_3
    iget v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v2, v4, 0x14

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v3, v4, v2

    if-nez v3, :cond_4e

    new-instance v3, Landroid/database/sqlite/SQLiteConnection$Operation;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>(Landroid/database/sqlite/SQLiteConnection$Operation;)V

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aput-object v3, v4, v2

    :cond_19
    :goto_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    iput-object p1, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    iput-object p2, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    if-eqz p3, :cond_6d

    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-nez v4, :cond_61

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    :goto_36
    const/4 v1, 0x0

    :goto_37
    array-length v4, p3

    if-ge v1, v4, :cond_6d

    aget-object v0, p3, v1

    if-eqz v0, :cond_67

    instance-of v4, v0, [B

    if-eqz v4, :cond_67

    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->-get0()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_4e
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-eqz v4, :cond_19

    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5e

    goto :goto_19

    :catchall_5e
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_61
    :try_start_61
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_36

    :cond_67
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_6d
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->newOperationCookieLocked(I)I

    move-result v4

    iput v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    const-wide/32 v6, 0x100000

    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-static {v3}, Landroid/database/sqlite/SQLiteConnection$Operation;->-wrap1(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v4

    iget v6, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    const-wide/32 v8, 0x100000

    invoke-static {v8, v9, v4, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_88
    iput v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    iget v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I
    :try_end_8c
    .catchall {:try_start_61 .. :try_end_8c} :catchall_5e

    monitor-exit v5

    return v4
.end method

.method public describeCurrentOperation()Ljava/lang/String;
    .registers 7

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v3

    :try_start_4
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    iget v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    aget-object v1, v2, v4

    if-eqz v1, :cond_21

    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_23

    move-result-object v2

    monitor-exit v3

    return-object v2

    :cond_21
    monitor-exit v3

    return-object v5

    :catchall_23
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public dump(Landroid/util/Printer;Z)V
    .registers 10

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v5

    :try_start_3
    const-string/jumbo v4, "  Most recently executed operations:"

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v3, v4, v0

    if-eqz v3, :cond_54

    const/4 v2, 0x0

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ": ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteConnection$Operation;->-wrap0(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, p2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    if-lez v0, :cond_51

    add-int/lit8 v0, v0, -0x1

    :goto_43
    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v3, v4, v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_5b

    if-eqz v3, :cond_4f

    const/16 v4, 0x14

    if-lt v2, v4, :cond_12

    :cond_4f
    :goto_4f
    monitor-exit v5

    return-void

    :cond_51
    const/16 v0, 0x13

    goto :goto_43

    :cond_54
    :try_start_54
    const-string/jumbo v4, "    <none>"

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_5b

    goto :goto_4f

    :catchall_5b
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public endOperation(I)V
    .registers 4

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V
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

.method public endOperationDeferLog(I)Z
    .registers 4

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result v1

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public failOperation(ILjava/lang/Exception;)V
    .registers 6

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    if-eqz v0, :cond_b

    iput-object p2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit v2

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public logOperation(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method
