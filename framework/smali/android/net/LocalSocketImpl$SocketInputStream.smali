.class Landroid/net/LocalSocketImpl$SocketInputStream;
.super Ljava/io/InputStream;
.source "LocalSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LocalSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/LocalSocketImpl;


# direct methods
.method constructor <init>(Landroid/net/LocalSocketImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v3}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v2

    if-nez v2, :cond_11

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "socket closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_11
    new-instance v0, Landroid/util/MutableInt;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/util/MutableInt;-><init>(I)V

    :try_start_17
    sget v3, Landroid/system/OsConstants;->FIONREAD:I

    invoke-static {v2, v3, v0}, Landroid/system/Os;->ioctlInt(Ljava/io/FileDescriptor;ILandroid/util/MutableInt;)I
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_17 .. :try_end_1c} :catch_1f

    iget v3, v0, Landroid/util/MutableInt;->value:I

    return v3

    :catch_1f
    move-exception v1

    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    return-void
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v2}, Landroid/net/LocalSocketImpl;->-get1(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v2}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    if-nez v0, :cond_1b

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "socket closed"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1b
    :try_start_1b
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v2, v0}, Landroid/net/LocalSocketImpl;->-wrap0(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_18

    move-result v1

    monitor-exit v3

    return v1
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/net/LocalSocketImpl$SocketInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v2}, Landroid/net/LocalSocketImpl;->-get1(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v2}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    if-nez v0, :cond_1b

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "socket closed"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1b
    if-ltz p2, :cond_1f

    if-gez p3, :cond_25

    :cond_1f
    :try_start_1f
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_25
    add-int v2, p2, p3

    array-length v4, p1

    if-gt v2, v4, :cond_1f

    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v2, p1, p2, p3, v0}, Landroid/net/LocalSocketImpl;->-wrap1(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)I
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_18

    move-result v1

    monitor-exit v3

    return v1
.end method
