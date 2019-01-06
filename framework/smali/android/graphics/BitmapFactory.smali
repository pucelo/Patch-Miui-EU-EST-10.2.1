.class public Landroid/graphics/BitmapFactory;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapFactory$Options;
    }
.end annotation


# static fields
.field private static final DECODE_BUFFER_SIZE:I = 0x4000


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 10

    const-wide/16 v4, 0x2

    or-int v1, p1, p2

    if-ltz v1, :cond_b

    array-length v1, p0

    add-int v2, p1, p2

    if-ge v1, v2, :cond_11

    :cond_b
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_11
    invoke-static {p3}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    const-string/jumbo v1, "decodeBitmap"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_1a
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_34

    if-eqz p3, :cond_34

    iget-object v1, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_34

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Problem decoding into existing bitmap"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v1

    :cond_34
    :try_start_34
    invoke-static {v0, p3}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_2f

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 10

    invoke-static {p1}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_5
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_18
    .catchall {:try_start_5 .. :try_end_a} :catchall_3b

    const/4 v5, 0x0

    :try_start_b
    invoke-static {v4, v5, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_47
    .catchall {:try_start_b .. :try_end_e} :catchall_44

    move-result-object v0

    if-eqz v4, :cond_14

    :try_start_11
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_16

    :cond_14
    :goto_14
    move-object v3, v4

    :cond_15
    :goto_15
    return-object v0

    :catch_16
    move-exception v1

    goto :goto_14

    :catch_18
    move-exception v2

    :goto_19
    :try_start_19
    const-string/jumbo v5, "BitmapFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to decode stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_3b

    if-eqz v3, :cond_15

    :try_start_35
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_15

    :catch_39
    move-exception v1

    goto :goto_15

    :catchall_3b
    move-exception v5

    :goto_3c
    if-eqz v3, :cond_41

    :try_start_3e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    :cond_41
    :goto_41
    throw v5

    :catch_42
    move-exception v1

    goto :goto_41

    :catchall_44
    move-exception v5

    move-object v3, v4

    goto :goto_3c

    :catch_47
    move-exception v2

    move-object v3, v4

    goto :goto_19
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 11

    const-wide/16 v6, 0x2

    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    const-string/jumbo v3, "decodeFileDescriptor"

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_b
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->nativeIsSeekable(Ljava/io/FileDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_15
    if-nez v0, :cond_41

    if-eqz p2, :cond_41

    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_41

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v3

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v3

    :cond_2b
    :try_start_2b
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_26

    :try_start_30
    invoke-static {v1, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3a

    move-result-object v0

    :try_start_34
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_37} :catch_38
    .catchall {:try_start_34 .. :try_end_37} :catchall_26

    goto :goto_15

    :catch_38
    move-exception v2

    goto :goto_15

    :catchall_3a
    move-exception v3

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_3f
    .catchall {:try_start_3b .. :try_end_3e} :catchall_26

    :goto_3e
    :try_start_3e
    throw v3

    :catch_3f
    move-exception v2

    goto :goto_3e

    :cond_41
    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_26

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 10

    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_5
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0, p1, v4}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {p0, v4, v3, v5, p2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_2b
    .catchall {:try_start_5 .. :try_end_12} :catchall_34

    move-result-object v0

    if-eqz v3, :cond_18

    :try_start_15
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_29

    :cond_18
    :goto_18
    if-nez v0, :cond_3d

    if-eqz p2, :cond_3d

    iget-object v5, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3d

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Problem decoding into existing bitmap"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_29
    move-exception v1

    goto :goto_18

    :catch_2b
    move-exception v2

    if-eqz v3, :cond_18

    :try_start_2e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_18

    :catch_32
    move-exception v1

    goto :goto_18

    :catchall_34
    move-exception v5

    if-eqz v3, :cond_3a

    :try_start_37
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    :cond_3a
    :goto_3a
    throw v5

    :catch_3b
    move-exception v1

    goto :goto_3a

    :cond_3d
    return-object v0
.end method

.method public static decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7

    invoke-static {p4}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    if-nez p4, :cond_a

    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_a
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v1, :cond_18

    if-eqz p1, :cond_18

    iget v0, p1, Landroid/util/TypedValue;->density:I

    if-nez v0, :cond_2b

    const/16 v1, 0xa0

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :cond_18
    :goto_18
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez v1, :cond_26

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    :cond_26
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_2b
    const v1, 0xffff

    if-eq v0, v1, :cond_18

    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_18
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 11

    const-wide/16 v6, 0x2

    const/4 v3, 0x0

    if-nez p0, :cond_6

    return-object v3

    :cond_6
    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    const/4 v2, 0x0

    const-string/jumbo v3, "decodeBitmap"

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_10
    instance-of v3, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v3, :cond_34

    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1e
    if-nez v2, :cond_39

    if-eqz p2, :cond_39

    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_39

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v3

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v3

    :cond_34
    :try_start_34
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1e

    :cond_39
    invoke-static {v2, p2}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_2f

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return-object v2
.end method

.method private static decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    :cond_5
    if-nez v0, :cond_b

    const/16 v1, 0x4000

    new-array v0, v1, [B

    :cond_b
    invoke-static {p0, v0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static native nativeDecodeAsset(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeIsSeekable(Ljava/io/FileDescriptor;)Z
.end method

.method private static setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    .registers 7

    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    return-void

    :cond_5
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eqz v0, :cond_2d

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-eqz v3, :cond_12

    if-ne v0, v3, :cond_13

    :cond_12
    return-void

    :cond_13
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-eq v0, v4, :cond_12

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v1

    :goto_21
    iget-boolean v4, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v4, :cond_27

    if-eqz v1, :cond_2a

    :cond_27
    invoke-virtual {p0, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    const/4 v1, 0x0

    goto :goto_21

    :cond_2d
    iget-object v4, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2a

    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_2a
.end method
