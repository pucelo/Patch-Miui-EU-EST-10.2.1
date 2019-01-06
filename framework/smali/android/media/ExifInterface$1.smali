.class Landroid/media/ExifInterface$1;
.super Landroid/media/MediaDataSource;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/ExifInterface;->getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPosition:J

.field final synthetic this$0:Landroid/media/ExifInterface;

.field final synthetic val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;


# direct methods
.method constructor <init>(Landroid/media/ExifInterface;Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 3

    iput-object p1, p0, Landroid/media/ExifInterface$1;->this$0:Landroid/media/ExifInterface;

    iput-object p2, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getSize()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public readAt(J[BII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v1, 0x0

    if-nez p5, :cond_5

    return v1

    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_c

    return v4

    :cond_c
    iget-wide v2, p0, Landroid/media/ExifInterface$1;->mPosition:J

    cmp-long v1, v2, p1

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v1, p1, p2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    iput-wide p1, p0, Landroid/media/ExifInterface$1;->mPosition:J

    :cond_19
    iget-object v1, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v1, p3, p4, p5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_26

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/media/ExifInterface$1;->mPosition:J

    return v4

    :cond_26
    iget-wide v2, p0, Landroid/media/ExifInterface$1;->mPosition:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/media/ExifInterface$1;->mPosition:J

    return v0
.end method
