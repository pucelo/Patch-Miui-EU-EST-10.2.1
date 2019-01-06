.class public Landroid/os/Binder;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Landroid/os/IBinder;


# static fields
.field public static final CHECK_PARCEL_SIZE:Z = false

.field private static final FIND_POTENTIAL_LEAKS:Z = false

.field public static LOG_RUNTIME_EXCEPTION:Z = false

.field static final TAG:Ljava/lang/String; = "Binder"

.field private static volatile sDumpDisabled:Ljava/lang/String;

.field private static volatile sTracingEnabled:Z

.field private static volatile sTransactionTracker:Landroid/os/TransactionTracker;

.field static volatile sWarnOnBlocking:Z


# instance fields
.field private mDescriptor:Ljava/lang/String;

.field private mObject:J

.field private mOwner:Landroid/os/IInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Binder;->LOG_RUNTIME_EXCEPTION:Z

    sput-object v1, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    sput-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    sput-boolean v0, Landroid/os/Binder;->sTracingEnabled:Z

    sput-boolean v0, Landroid/os/Binder;->sWarnOnBlocking:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/os/Binder;->init()V

    return-void
.end method

.method public static allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 6

    :try_start_0
    instance-of v2, p0, Landroid/os/BinderProxy;

    if-eqz v2, :cond_c

    move-object v0, p0

    check-cast v0, Landroid/os/BinderProxy;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    :cond_b
    :goto_b
    return-object p0

    :cond_c
    if-eqz p0, :cond_b

    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "Binder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to allow blocking on interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_b

    :catch_33
    move-exception v1

    goto :goto_b
.end method

.method public static final native blockUntilThreadAvailable()V
.end method

.method static checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-static {v1}, Landroid/os/AnrMonitor;->isAllowedMonitorBinderCallSize(I)Z

    move-result v1

    if-eqz v1, :cond_6c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ": on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " calling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " (data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Binder"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    return-void
.end method

.method public static final native clearCallingIdentity()J
.end method

.method public static copyAllowBlocking(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    instance-of v0, p0, Landroid/os/BinderProxy;

    if-eqz v0, :cond_10

    instance-of v0, p1, Landroid/os/BinderProxy;

    if-eqz v0, :cond_10

    check-cast p1, Landroid/os/BinderProxy;

    check-cast p0, Landroid/os/BinderProxy;

    iget-boolean v0, p0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    iput-boolean v0, p1, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    :cond_10
    return-void
.end method

.method private final native destroyBinder()V
.end method

.method public static disableTracing()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Binder;->sTracingEnabled:Z

    return-void
.end method

.method public static enableTracing()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/Binder;->sTracingEnabled:Z

    return-void
.end method

.method private execTransact(IJJI)Z
    .registers 15

    invoke-static {p2, p3}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {p4, p5}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->isTracingEnabled()Z

    move-result v4

    if-eqz v4, :cond_33

    :try_start_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/os/Binder;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x1

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_33
    invoke-virtual {p0, p1, v0, v2, p6}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_36} :catch_4e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_36} :catch_4e
    .catchall {:try_start_e .. :try_end_36} :catchall_80

    move-result v3

    if-eqz v4, :cond_3e

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3e
    :goto_3e
    const-string/jumbo v5, "Unreasonably large binder reply buffer"

    invoke-static {p0, p1, v2, v5}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    return v3

    :catch_4e
    move-exception v1

    :try_start_4f
    sget-boolean v5, Landroid/os/Binder;->LOG_RUNTIME_EXCEPTION:Z

    if-eqz v5, :cond_5c

    const-string/jumbo v5, "Binder"

    const-string/jumbo v6, "Caught a RuntimeException from the binder stub implementation."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5c
    and-int/lit8 v5, p6, 0x1

    if-eqz v5, :cond_89

    instance-of v5, v1, Landroid/os/RemoteException;

    if-eqz v5, :cond_76

    const-string/jumbo v5, "Binder"

    const-string/jumbo v6, "Binder call failed."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_4f .. :try_end_6d} :catchall_80

    :goto_6d
    const/4 v3, 0x1

    if-eqz v4, :cond_3e

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_3e

    :cond_76
    :try_start_76
    const-string/jumbo v5, "Binder"

    const-string/jumbo v6, "Caught a RuntimeException from the binder stub implementation."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_76 .. :try_end_7f} :catchall_80

    goto :goto_6d

    :catchall_80
    move-exception v5

    if-eqz v4, :cond_88

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    :cond_88
    throw v5

    :cond_89
    const/4 v5, 0x0

    :try_start_8a
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V
    :try_end_90
    .catchall {:try_start_8a .. :try_end_90} :catchall_80

    goto :goto_6d
.end method

.method public static final native flushPendingCommands()V
.end method

.method public static final native getCallingPid()I
.end method

.method public static final native getCallingUid()I
.end method

.method public static final getCallingUserHandle()Landroid/os/UserHandle;
    .registers 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public static final native getThreadStrictModePolicy()I
.end method

.method public static declared-synchronized getTransactionTracker()Landroid/os/TransactionTracker;
    .registers 2

    const-class v1, Landroid/os/Binder;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    if-nez v0, :cond_e

    new-instance v0, Landroid/os/TransactionTracker;

    invoke-direct {v0}, Landroid/os/TransactionTracker;-><init>()V

    sput-object v0, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    :cond_e
    sget-object v0, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final native init()V
.end method

.method public static final isProxy(Landroid/os/IInterface;)Z
    .registers 2

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isTracingEnabled()Z
    .registers 1

    sget-boolean v0, Landroid/os/Binder;->sTracingEnabled:Z

    return v0
.end method

.method public static final native joinThreadPool()V
.end method

.method public static final native restoreCallingIdentity(J)V
.end method

.method public static setDumpDisabled(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    return-void
.end method

.method public static final native setThreadStrictModePolicy(I)V
.end method

.method public static setWarnOnBlocking(Z)V
    .registers 1

    sput-boolean p0, Landroid/os/Binder;->sWarnOnBlocking:Z

    return-void
.end method

.method public static final withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v3, 0x0

    :try_start_6
    invoke-interface {p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;->get()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_e
    .catchall {:try_start_6 .. :try_end_9} :catchall_1b

    move-result-object v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catch_e
    move-exception v2

    move-object v3, v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_1a

    invoke-static {v2}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :cond_1a
    return-object v4

    :catchall_1b
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public static final withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v3, 0x0

    :try_start_5
    invoke-interface {p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;->run()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_c
    .catchall {:try_start_5 .. :try_end_8} :catchall_18

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_b
    return-void

    :catch_c
    move-exception v2

    move-object v3, v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_b

    invoke-static {v2}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :catchall_18
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method


# virtual methods
.method public attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    iput-object p2, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    return-void
.end method

.method doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    sget-object v0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    if-nez v0, :cond_33

    :try_start_4
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_7} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v2

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v3, "Exception occurred while dumping:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_7

    :catch_16
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Security exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    throw v1

    :cond_33
    sget-object v3, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    :try_start_a
    invoke-virtual {p0, p1, v1, p2}, Landroid/os/Binder;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_11

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    return-void

    :catchall_11
    move-exception v2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    throw v2
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 10

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v6}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Landroid/os/Binder$1;

    const-string/jumbo v2, "Binder.dumpAsync"

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/Binder$1;-><init>(Landroid/os/Binder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/os/Binder;->destroyBinder()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public isBinderAlive()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .registers 3

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/io/FileOutputStream;

    if-eqz p3, :cond_1b

    :goto_5
    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    const-string/jumbo v2, "No shell command implementation."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    const/4 v2, 0x0

    invoke-virtual {p6, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_1b
    move-object p3, p2

    goto :goto_5
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    if-ne p1, v0, :cond_e

    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_e
    const v0, 0x5f444d50

    if-ne p1, v0, :cond_37

    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v4

    if-eqz v8, :cond_27

    :try_start_1d
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_2e

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_27
    if-eqz p3, :cond_33

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_2c
    const/4 v0, 0x1

    return v0

    :catchall_2e
    move-exception v0

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_33
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    goto :goto_2c

    :cond_37
    const v0, 0x5f434d44

    if-ne p1, v0, :cond_a1

    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v4

    sget-object v0, Landroid/os/ShellCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ShellCallback;

    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ResultReceiver;

    if-eqz v10, :cond_72

    if-eqz v9, :cond_82

    :try_start_60
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    :goto_64
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    if-eqz v7, :cond_84

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    :goto_6e
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/Binder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    :try_end_72
    .catchall {:try_start_60 .. :try_end_72} :catchall_8d

    :cond_72
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz p3, :cond_89

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_80
    const/4 v0, 0x1

    return v0

    :cond_82
    const/4 v1, 0x0

    goto :goto_64

    :cond_84
    :try_start_84
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_8d

    move-result-object v3

    goto :goto_6e

    :cond_89
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    goto :goto_80

    :catchall_8d
    move-exception v0

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz p3, :cond_9d

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_9c
    throw v0

    :cond_9d
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    goto :goto_9c

    :cond_a1
    const/4 v0, 0x0

    return v0
.end method

.method public pingBinder()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    return-object v0

    :cond_10
    return-object v1
.end method

.method public shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p6}, Landroid/os/Binder;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public final transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz p3, :cond_f

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_f
    return v0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method
