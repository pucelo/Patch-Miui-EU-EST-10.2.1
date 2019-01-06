.class Landroid/net/LocalSocketImpl$SocketOutputStream;
.super Ljava/io/OutputStream;
.source "LocalSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LocalSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/LocalSocketImpl;


# direct methods
.method constructor <init>(Landroid/net/LocalSocketImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    return-void
.end method

.method public flush()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v4}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v2

    if-nez v2, :cond_12

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "socket closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_12
    new-instance v3, Landroid/util/MutableInt;

    invoke-direct {v3, v5}, Landroid/util/MutableInt;-><init>(I)V

    :goto_17
    :try_start_17
    sget v4, Landroid/system/OsConstants;->TIOCOUTQ:I

    invoke-static {v2, v4, v3}, Landroid/system/Os;->ioctlInt(Ljava/io/FileDescriptor;ILandroid/util/MutableInt;)I
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_17 .. :try_end_1c} :catch_21

    iget v4, v3, Landroid/util/MutableInt;->value:I

    if-gtz v4, :cond_27

    :goto_20
    return-void

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v4

    throw v4

    :cond_27
    const-wide/16 v4, 0xa

    :try_start_29
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_17

    :catch_2d
    move-exception v1

    goto :goto_20
.end method

.method public write(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v1}, Landroid/net/LocalSocketImpl;->-get2(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v1}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    if-nez v0, :cond_1b

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "socket closed"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1b
    :try_start_1b
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v1, p1, v0}, Landroid/net/LocalSocketImpl;->-wrap2(Landroid/net/LocalSocketImpl;ILjava/io/FileDescriptor;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_18

    monitor-exit v2

    return-void
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/net/LocalSocketImpl$SocketOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v1}, Landroid/net/LocalSocketImpl;->-get2(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v1}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    if-nez v0, :cond_1b

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "socket closed"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1b
    if-ltz p2, :cond_1f

    if-gez p3, :cond_25

    :cond_1f
    :try_start_1f
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_25
    add-int v1, p2, p3

    array-length v3, p1

    if-gt v1, v3, :cond_1f

    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v1, p1, p2, p3, v0}, Landroid/net/LocalSocketImpl;->-wrap3(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)V
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_18

    monitor-exit v2

    return-void
.end method
