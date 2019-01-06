.class public Landroid/graphics/Movie;
.super Ljava/lang/Object;
.source "Movie.java"


# instance fields
.field private mNativeMovie:J


# direct methods
.method private constructor <init>(J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native movie creation failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iput-wide p1, p0, Landroid/graphics/Movie;->mNativeMovie:J

    return-void
.end method

.method public static native decodeByteArray([BII)Landroid/graphics/Movie;
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;
    .registers 4

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_5} :catch_a

    invoke-static {v1}, Landroid/graphics/Movie;->decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v2

    return-object v2

    :catch_a
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    .registers 4

    const/4 v2, 0x0

    if-nez p0, :cond_4

    return-object v2

    :cond_4
    instance-of v2, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v2, :cond_13

    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Movie;->nativeDecodeAsset(J)Landroid/graphics/Movie;

    move-result-object v2

    return-object v2

    :cond_13
    invoke-static {p0}, Landroid/graphics/Movie;->nativeDecodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v2

    return-object v2
.end method

.method private static decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    .registers 3

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_9

    :goto_8
    return-object v1

    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method private native nDraw(JFFJ)V
.end method

.method private static native nativeDecodeAsset(J)Landroid/graphics/Movie;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
.end method

.method private static native nativeDestructor(J)V
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FF)V
    .registers 12

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v7}, Landroid/graphics/Movie;->nDraw(JFFJ)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .registers 13

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v2

    if-eqz p4, :cond_11

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_a
    move-object v1, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v7}, Landroid/graphics/Movie;->nDraw(JFFJ)V

    return-void

    :cond_11
    const-wide/16 v6, 0x0

    goto :goto_a
.end method

.method public native duration()I
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Movie;->mNativeMovie:J

    invoke-static {v0, v1}, Landroid/graphics/Movie;->nativeDestructor(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Movie;->mNativeMovie:J
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native height()I
.end method

.method public native isOpaque()Z
.end method

.method public native setTime(I)Z
.end method

.method public native width()I
.end method
