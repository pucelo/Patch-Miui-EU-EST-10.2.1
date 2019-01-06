.class Landroid/os/MemoryFile$MemoryInputStream;
.super Ljava/io/InputStream;
.source "MemoryFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MemoryFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryInputStream"
.end annotation


# instance fields
.field private mMark:I

.field private mOffset:I

.field private mSingleByte:[B

.field final synthetic this$0:Landroid/os/MemoryFile;


# direct methods
.method private constructor <init>(Landroid/os/MemoryFile;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mMark:I

    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$MemoryInputStream;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/MemoryFile$MemoryInputStream;-><init>(Landroid/os/MemoryFile;)V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    iget-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    invoke-static {v1}, Landroid/os/MemoryFile;->-get0(Landroid/os/MemoryFile;)Landroid/os/SharedMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/SharedMemory;->getSize()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    invoke-static {v0}, Landroid/os/MemoryFile;->-get0(Landroid/os/MemoryFile;)Landroid/os/SharedMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getSize()I

    move-result v0

    iget v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public mark(I)V
    .registers 3

    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mMark:I

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mSingleByte:[B

    if-nez v1, :cond_a

    new-array v1, v2, [B

    iput-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mSingleByte:[B

    :cond_a
    iget-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mSingleByte:[B

    invoke-virtual {p0, v1, v3, v2}, Landroid/os/MemoryFile$MemoryInputStream;->read([BII)I

    move-result v0

    if-eq v0, v2, :cond_14

    const/4 v1, -0x1

    return v1

    :cond_14
    iget-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mSingleByte:[B

    aget-byte v1, v1, v3

    return v1
.end method

.method public read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_4

    if-gez p3, :cond_a

    :cond_4
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_a
    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/os/MemoryFile$MemoryInputStream;->available()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v1, 0x1

    if-ge p3, v1, :cond_1c

    const/4 v1, -0x1

    return v1

    :cond_1c
    iget-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    iget v2, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/os/MemoryFile;->readBytes([BIII)I

    move-result v0

    if-lez v0, :cond_2b

    iget v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    :cond_2b
    return v0
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mMark:I

    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    return-void
.end method

.method public skip(J)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget-object v2, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    invoke-static {v2}, Landroid/os/MemoryFile;->-get0(Landroid/os/MemoryFile;)Landroid/os/SharedMemory;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/SharedMemory;->getSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    iget-object v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    invoke-static {v0}, Landroid/os/MemoryFile;->-get0(Landroid/os/MemoryFile;)Landroid/os/SharedMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getSize()I

    move-result v0

    iget v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    sub-int/2addr v0, v1

    int-to-long p1, v0

    :cond_21
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    return-wide p1
.end method
