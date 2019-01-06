.class public Landroid/util/jar/StrictJarFile$FDStream;
.super Ljava/io/InputStream;
.source "StrictJarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FDStream"
.end annotation


# instance fields
.field private endOffset:J

.field private final fd:Ljava/io/FileDescriptor;

.field private offset:J


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Landroid/util/jar/StrictJarFile$FDStream;->fd:Ljava/io/FileDescriptor;

    iput-wide p2, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    iput-wide p4, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v5, p0, Landroid/util/jar/StrictJarFile$FDStream;->fd:Ljava/io/FileDescriptor;

    monitor-enter v5

    :try_start_3
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    iget-wide v8, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2f

    sub-long v2, v6, v8

    int-to-long v6, p3

    cmp-long v4, v6, v2

    if-lez v4, :cond_f

    long-to-int p3, v2

    :cond_f
    :try_start_f
    iget-object v4, p0, Landroid/util/jar/StrictJarFile$FDStream;->fd:Ljava/io/FileDescriptor;

    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    sget v8, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v4, v6, v7, v8}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_18
    .catch Landroid/system/ErrnoException; {:try_start_f .. :try_end_18} :catch_28
    .catchall {:try_start_f .. :try_end_18} :catchall_2f

    :try_start_18
    iget-object v4, p0, Landroid/util/jar/StrictJarFile$FDStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v4, p1, p2, p3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    if-lez v0, :cond_32

    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_2f

    monitor-exit v5

    return v0

    :catch_28
    move-exception v1

    :try_start_29
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_32
    const/4 v4, -0x1

    monitor-exit v5

    return v4
.end method

.method public skip(J)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_f

    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    sub-long p1, v0, v2

    :cond_f
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    return-wide p1
.end method
