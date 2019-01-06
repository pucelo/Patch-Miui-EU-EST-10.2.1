.class public Landroid/os/FileBridge;
.super Ljava/lang/Thread;
.source "FileBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileBridge$FileBridgeOutputStream;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CMD_CLOSE:I = 0x3

.field private static final CMD_FSYNC:I = 0x2

.field private static final CMD_WRITE:I = 0x1

.field private static final MSG_LENGTH:I = 0x8

.field private static final TAG:Ljava/lang/String; = "FileBridge"


# instance fields
.field private final mClient:Ljava/io/FileDescriptor;

.field private volatile mClosed:Z

.field private final mServer:Ljava/io/FileDescriptor;

.field private mTarget:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>()V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v1, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v1, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    :try_start_11
    sget v1, Landroid/system/OsConstants;->AF_UNIX:I

    sget v2, Landroid/system/OsConstants;->SOCK_STREAM:I

    iget-object v3, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    iget-object v4, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    :try_end_1d
    .catch Landroid/system/ErrnoException; {:try_start_11 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed to create bridge"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public forceClose()V
    .registers 2

    iget-object v0, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/FileBridge;->mClosed:Z

    return-void
.end method

.method public getClientSocket()Ljava/io/FileDescriptor;
    .registers 2

    iget-object v0, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public isClosed()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/FileBridge;->mClosed:Z

    return v0
.end method

.method public run()V
    .registers 11

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/16 v5, 0x2000

    new-array v4, v5, [B

    :cond_7
    :goto_7
    :try_start_7
    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v5, v4, v6, v7}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    if-ne v5, v8, :cond_98

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    if-ne v0, v9, :cond_6a

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v6, 0x4

    invoke-static {v4, v6, v5}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    :goto_22
    if-lez v2, :cond_7

    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    array-length v6, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v4, v7, v6}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_62

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unexpected EOF; still expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_54
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_54} :catch_54
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_54} :catch_54
    .catchall {:try_start_7 .. :try_end_54} :catchall_7b

    :catch_54
    move-exception v1

    :try_start_55
    const-string/jumbo v5, "FileBridge"

    const-string/jumbo v6, "Failed during bridge"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_7b

    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    :goto_61
    return-void

    :cond_62
    :try_start_62
    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    invoke-static {v5, v4, v6, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    sub-int/2addr v2, v3

    goto :goto_22

    :cond_6a
    const/4 v5, 0x2

    if-ne v0, v5, :cond_80

    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v5}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v5, v4, v6, v7}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V
    :try_end_7a
    .catch Landroid/system/ErrnoException; {:try_start_62 .. :try_end_7a} :catch_54
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_7a} :catch_54
    .catchall {:try_start_62 .. :try_end_7a} :catchall_7b

    goto :goto_7

    :catchall_7b
    move-exception v5

    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    throw v5

    :cond_80
    const/4 v5, 0x3

    if-ne v0, v5, :cond_7

    :try_start_83
    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v5}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v5}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/os/FileBridge;->mClosed:Z

    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v5, v4, v6, v7}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V
    :try_end_98
    .catch Landroid/system/ErrnoException; {:try_start_83 .. :try_end_98} :catch_54
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_98} :catch_54
    .catchall {:try_start_83 .. :try_end_98} :catchall_7b

    :cond_98
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    goto :goto_61
.end method

.method public setTargetFile(Ljava/io/FileDescriptor;)V
    .registers 2

    iput-object p1, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    return-void
.end method
