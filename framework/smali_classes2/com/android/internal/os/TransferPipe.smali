.class public final Lcom/android/internal/os/TransferPipe;
.super Ljava/lang/Object;
.source "TransferPipe.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/TransferPipe$Caller;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEFAULT_TIMEOUT:J = 0x1388L

.field static final TAG:Ljava/lang/String; = "TransferPipe"


# instance fields
.field mBufferPrefix:Ljava/lang/String;

.field mComplete:Z

.field mEndTime:J

.field mFailure:Ljava/lang/String;

.field final mFds:[Landroid/os/ParcelFileDescriptor;

.field mOutFd:Ljava/io/FileDescriptor;

.field final mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/TransferPipe;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "TransferPipe"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    return-void
.end method

.method public static dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/internal/os/TransferPipe;->goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method static go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v6, 0x1388

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v7}, Lcom/android/internal/os/TransferPipe;->go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V

    return-void
.end method

.method static go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    instance-of v3, v3, Landroid/os/Binder;

    if-eqz v3, :cond_f

    :try_start_9
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/os/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    goto :goto_c

    :cond_f
    const/4 v1, 0x0

    :try_start_10
    new-instance v2, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_2d
    .catchall {:try_start_10 .. :try_end_15} :catchall_48

    :try_start_15
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-interface {p0, p1, v3, p3, p4}, Lcom/android/internal/os/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v2, p2, p5, p6}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_23} :catch_4d
    .catchall {:try_start_15 .. :try_end_23} :catchall_4a

    if-eqz v2, :cond_28

    :try_start_25
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_28} :catch_2b

    :cond_28
    :goto_28
    if-eqz v4, :cond_47

    throw v4

    :catch_2b
    move-exception v4

    goto :goto_28

    :catch_2d
    move-exception v3

    :goto_2e
    :try_start_2e
    throw v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_33
    if-eqz v1, :cond_38

    :try_start_35
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_3b

    :cond_38
    :goto_38
    if-eqz v4, :cond_46

    throw v4

    :catch_3b
    move-exception v5

    if-nez v4, :cond_40

    move-object v4, v5

    goto :goto_38

    :cond_40
    if-eq v4, v5, :cond_38

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_38

    :cond_46
    throw v3

    :cond_47
    return-void

    :catchall_48
    move-exception v3

    goto :goto_33

    :catchall_4a
    move-exception v3

    move-object v1, v2

    goto :goto_33

    :catch_4d
    move-exception v3

    move-object v1, v2

    goto :goto_2e
.end method

.method static goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/os/TransferPipe;->goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V

    return-void
.end method

.method static goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    instance-of v3, p0, Landroid/os/Binder;

    if-eqz v3, :cond_b

    :try_start_5
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    :try_start_c
    new-instance v2, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_11} :catch_29
    .catchall {:try_start_c .. :try_end_11} :catchall_44

    :try_start_11
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-interface {p0, v3, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    invoke-virtual {v2, p1, p3, p4}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1f} :catch_49
    .catchall {:try_start_11 .. :try_end_1f} :catchall_46

    if-eqz v2, :cond_24

    :try_start_21
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_24} :catch_27

    :cond_24
    :goto_24
    if-eqz v4, :cond_43

    throw v4

    :catch_27
    move-exception v4

    goto :goto_24

    :catch_29
    move-exception v3

    :goto_2a
    :try_start_2a
    throw v3
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_2f
    if-eqz v1, :cond_34

    :try_start_31
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_37

    :cond_34
    :goto_34
    if-eqz v4, :cond_42

    throw v4

    :catch_37
    move-exception v5

    if-nez v4, :cond_3c

    move-object v4, v5

    goto :goto_34

    :cond_3c
    if-eq v4, v5, :cond_34

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_34

    :cond_42
    throw v3

    :cond_43
    return-void

    :catchall_44
    move-exception v3

    goto :goto_2f

    :catchall_46
    move-exception v3

    move-object v1, v2

    goto :goto_2f

    :catch_49
    move-exception v3

    move-object v1, v2

    goto :goto_2a
.end method


# virtual methods
.method public close()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    return-void
.end method

.method closeFd(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, p1

    if-eqz v1, :cond_12

    :try_start_7
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_13

    :goto_e
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aput-object v2, v1, p1

    :cond_12
    return-void

    :catch_13
    move-exception v0

    goto :goto_e
.end method

.method getReadFd()Landroid/os/ParcelFileDescriptor;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getWriteFd()Landroid/os/ParcelFileDescriptor;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public go(Ljava/io/FileDescriptor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V

    return-void
.end method

.method public go(Ljava/io/FileDescriptor;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_3c

    :try_start_1
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p2

    iput-wide v4, p0, Lcom/android/internal/os/TransferPipe;->mEndTime:J

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_13
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    if-nez v1, :cond_47

    iget-boolean v1, p0, Lcom/android/internal/os/TransferPipe;->mComplete:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_47

    iget-wide v4, p0, Lcom/android/internal/os/TransferPipe;->mEndTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v2, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_41

    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v4, "Timeout"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit p0

    throw v1
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v1

    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v1

    :cond_41
    :try_start_41
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/TransferPipe;->wait(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_44} :catch_45
    .catchall {:try_start_41 .. :try_end_44} :catchall_39

    goto :goto_13

    :catch_45
    move-exception v0

    goto :goto_13

    :cond_47
    :try_start_47
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    if-eqz v1, :cond_53

    new-instance v1, Ljava/io/IOException;

    iget-object v4, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_53
    .catchall {:try_start_47 .. :try_end_53} :catchall_39

    :cond_53
    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_3c

    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    return-void
.end method

.method public kill()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 13

    const/16 v11, 0xa

    const/16 v10, 0x400

    new-array v0, v10, [B

    monitor-enter p0

    :try_start_7
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->getReadFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    if-nez v7, :cond_18

    const-string/jumbo v10, "TransferPipe"

    const-string/jumbo v11, "Pipe has been closed..."

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_4f

    monitor-exit p0

    return-void

    :cond_18
    :try_start_18
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    invoke-direct {v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_4f

    monitor-exit p0

    const/4 v1, 0x0

    const/4 v6, 0x1

    iget-object v10, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    if-eqz v10, :cond_35

    iget-object v10, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :cond_35
    :goto_35
    :try_start_35
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_7e

    if-nez v1, :cond_52

    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_41} :catch_42

    goto :goto_35

    :catch_42
    move-exception v2

    monitor-enter p0

    :try_start_44
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->notifyAll()V
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_8d

    monitor-exit p0

    return-void

    :catchall_4f
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_52
    const/4 v9, 0x0

    const/4 v5, 0x0

    :goto_54
    if-ge v5, v8, :cond_76

    :try_start_56
    aget-byte v10, v0, v5

    if-eq v10, v11, :cond_73

    if-le v5, v9, :cond_61

    sub-int v10, v5, v9

    invoke-virtual {v4, v0, v9, v10}, Ljava/io/FileOutputStream;->write([BII)V

    :cond_61
    move v9, v5

    if-eqz v6, :cond_68

    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    const/4 v6, 0x0

    :cond_68
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v8, :cond_70

    aget-byte v10, v0, v5

    if-ne v10, v11, :cond_68

    :cond_70
    if-ge v5, v8, :cond_73

    const/4 v6, 0x1

    :cond_73
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    :cond_76
    if-le v8, v9, :cond_35

    sub-int v10, v8, v9

    invoke-virtual {v4, v0, v9, v10}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_35

    :cond_7e
    iget-object v10, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_83} :catch_42

    move-result v10

    monitor-enter p0

    const/4 v10, 0x1

    :try_start_86
    iput-boolean v10, p0, Lcom/android/internal/os/TransferPipe;->mComplete:Z

    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->notifyAll()V
    :try_end_8b
    .catchall {:try_start_86 .. :try_end_8b} :catchall_90

    monitor-exit p0

    return-void

    :catchall_8d
    move-exception v10

    monitor-exit p0

    throw v10

    :catchall_90
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public setBufferPrefix(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    return-void
.end method
