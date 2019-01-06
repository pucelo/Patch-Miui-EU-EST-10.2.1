.class Lcom/android/internal/os/ZygoteServer;
.super Ljava/lang/Object;
.source "ZygoteServer.java"


# static fields
.field private static final ANDROID_SOCKET_PREFIX:Ljava/lang/String; = "ANDROID_SOCKET_"

.field public static final TAG:Ljava/lang/String; = "ZygoteServer"


# instance fields
.field private mIsForkChild:Z

.field private mServerSocket:Landroid/net/LocalServerSocket;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/os/ZygoteServer;->createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "IOException during accept()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method closeServerSocket()V
    .registers 7

    const/4 v5, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->close()V

    if-eqz v2, :cond_15

    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_15} :catch_23
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_15} :catch_18

    :cond_15
    :goto_15
    iput-object v5, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    return-void

    :catch_18
    move-exception v0

    const-string/jumbo v3, "ZygoteServer"

    const-string/jumbo v4, "Zygote:  error closing descriptor"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    :catch_23
    move-exception v1

    const-string/jumbo v3, "ZygoteServer"

    const-string/jumbo v4, "Zygote:  error closing sockets"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method protected createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/os/ZygoteConnection;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    return-object v0
.end method

.method getServerSocketFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method registerServerSocket(Ljava/lang/String;)V
    .registers 11

    iget-object v6, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    if-nez v6, :cond_2f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ANDROID_SOCKET_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_18
    invoke-static {v5}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_1f} :catch_30

    move-result v4

    :try_start_20
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    invoke-virtual {v3, v4}, Ljava/io/FileDescriptor;->setInt$(I)V

    new-instance v6, Landroid/net/LocalServerSocket;

    invoke-direct {v6, v3}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v6, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2f} :catch_4b

    :cond_2f
    return-void

    :catch_30
    move-exception v2

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " unset or invalid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_4b
    move-exception v1

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error binding to local socket \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 14

    const/4 v11, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v10}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v9, v10, [Landroid/system/StructPollfd;

    const/4 v6, 0x0

    :goto_1e
    array-length v10, v9

    if-ge v6, v10, :cond_3c

    new-instance v10, Landroid/system/StructPollfd;

    invoke-direct {v10}, Landroid/system/StructPollfd;-><init>()V

    aput-object v10, v9, v6

    aget-object v11, v9, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/FileDescriptor;

    iput-object v10, v11, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    aget-object v10, v9, v6

    sget v11, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v11, v11

    iput-short v11, v10, Landroid/system/StructPollfd;->events:S

    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_3c
    const/4 v10, -0x1

    :try_start_3d
    invoke-static {v9, v10}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_40
    .catch Landroid/system/ErrnoException; {:try_start_3d .. :try_end_40} :catch_51

    array-length v10, v9

    add-int/lit8 v6, v10, -0x1

    :goto_43
    if-ltz v6, :cond_17

    aget-object v10, v9, v6

    iget-short v10, v10, Landroid/system/StructPollfd;->revents:S

    sget v11, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v10, v11

    if-nez v10, :cond_5b

    :cond_4e
    :goto_4e
    add-int/lit8 v6, v6, -0x1

    goto :goto_43

    :catch_51
    move-exception v4

    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "poll failed"

    invoke-direct {v10, v11, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :cond_5b
    if-nez v6, :cond_6c

    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteServer;->acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/android/internal/os/ZygoteConnection;->getFileDesciptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_6c
    :try_start_6c
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual {v2, p0}, Lcom/android/internal/os/ZygoteConnection;->processOneCommand(Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;

    move-result-object v0

    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    if-eqz v10, :cond_a1

    if-nez v0, :cond_a0

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "command == null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_85} :catch_85

    :catch_85
    move-exception v3

    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    if-nez v10, :cond_bc

    const-string/jumbo v10, "ZygoteServer"

    const-string/jumbo v11, "Exception executing zygote command: "

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4e

    :cond_a0
    return-object v0

    :cond_a1
    if-eqz v0, :cond_ac

    :try_start_a3
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "command != null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_ac
    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteConnection;->isClosedByPeer()Z

    move-result v10

    if-eqz v10, :cond_4e

    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_bb} :catch_85

    goto :goto_4e

    :cond_bc
    const-string/jumbo v10, "ZygoteServer"

    const-string/jumbo v11, "Caught post-fork exception in child process."

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v3
.end method

.method setForkChild()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    return-void
.end method
