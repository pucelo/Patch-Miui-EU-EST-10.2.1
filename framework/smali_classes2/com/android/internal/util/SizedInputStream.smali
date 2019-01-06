.class public Lcom/android/internal/util/SizedInputStream;
.super Ljava/io/InputStream;
.source "SizedInputStream.java"


# instance fields
.field private mLength:J

.field private final mWrapped:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .registers 4

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/SizedInputStream;->mWrapped:Ljava/io/InputStream;

    iput-wide p2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

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

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/android/internal/util/SizedInputStream;->mWrapped:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
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

    const-wide/16 v8, 0x0

    const/4 v6, -0x1

    iget-wide v2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    cmp-long v1, v2, v8

    if-gtz v1, :cond_a

    return v6

    :cond_a
    int-to-long v2, p3

    iget-wide v4, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_14

    iget-wide v2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    long-to-int p3, v2

    :cond_14
    iget-object v1, p0, Lcom/android/internal/util/SizedInputStream;->mWrapped:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, v6, :cond_45

    iget-wide v2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_4b

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected EOF; expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " more bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    iget-wide v2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    :cond_4b
    return v0
.end method
