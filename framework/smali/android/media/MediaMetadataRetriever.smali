.class public Landroid/media/MediaMetadataRetriever;
.super Ljava/lang/Object;
.source "MediaMetadataRetriever.java"


# static fields
.field private static final EMBEDDED_PICTURE_TYPE_ANY:I = 0xffff

.field public static final METADATA_KEY_ALBUM:I = 0x1

.field public static final METADATA_KEY_ALBUMARTIST:I = 0xd

.field public static final METADATA_KEY_ARTIST:I = 0x2

.field public static final METADATA_KEY_AUTHOR:I = 0x3

.field public static final METADATA_KEY_BITRATE:I = 0x14

.field public static final METADATA_KEY_CAPTURE_FRAMERATE:I = 0x19

.field public static final METADATA_KEY_CD_TRACK_NUMBER:I = 0x0

.field public static final METADATA_KEY_COMPILATION:I = 0xf

.field public static final METADATA_KEY_COMPOSER:I = 0x4

.field public static final METADATA_KEY_DATE:I = 0x5

.field public static final METADATA_KEY_DISC_NUMBER:I = 0xe

.field public static final METADATA_KEY_DURATION:I = 0x9

.field public static final METADATA_KEY_GENRE:I = 0x6

.field public static final METADATA_KEY_HAS_AUDIO:I = 0x10

.field public static final METADATA_KEY_HAS_VIDEO:I = 0x11

.field public static final METADATA_KEY_IS_DRM:I = 0x16

.field public static final METADATA_KEY_LOCATION:I = 0x17

.field public static final METADATA_KEY_LYRIC:I = 0x3e8

.field public static final METADATA_KEY_MIMETYPE:I = 0xc

.field public static final METADATA_KEY_NUM_TRACKS:I = 0xa

.field public static final METADATA_KEY_TIMED_TEXT_LANGUAGES:I = 0x15

.field public static final METADATA_KEY_TITLE:I = 0x7

.field public static final METADATA_KEY_VIDEO_HEIGHT:I = 0x13

.field public static final METADATA_KEY_VIDEO_ROTATION:I = 0x18

.field public static final METADATA_KEY_VIDEO_WIDTH:I = 0x12

.field public static final METADATA_KEY_WRITER:I = 0xb

.field public static final METADATA_KEY_YEAR:I = 0x8

.field public static final OPTION_CLOSEST:I = 0x3

.field public static final OPTION_CLOSEST_SYNC:I = 0x2

.field public static final OPTION_NEXT_SYNC:I = 0x1

.field public static final OPTION_PREVIOUS_SYNC:I


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/MediaMetadataRetriever;->native_init()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;->native_setup()V

    return-void
.end method

.method private native _getFrameAtTime(JIII)Landroid/graphics/Bitmap;
.end method

.method private native _setDataSource(Landroid/media/MediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native _setDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native getEmbeddedPicture(I)[B
.end method

.method private final native native_finalize()V
.end method

.method private static native native_init()V
.end method

.method private native native_setup()V
.end method


# virtual methods
.method public native extractMetadata(I)Ljava/lang/String;
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;->native_finalize()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEmbeddedPicture()[B
    .registers 2

    const v0, 0xffff

    invoke-direct {p0, v0}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getFrameAtTime()Landroid/graphics/Bitmap;
    .registers 8

    const/4 v5, -0x1

    const-wide/16 v2, -0x1

    const/4 v4, 0x2

    move-object v1, p0

    move v6, v5

    invoke-direct/range {v1 .. v6}, Landroid/media/MediaMetadataRetriever;->_getFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFrameAtTime(J)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFrameAtTime(JI)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v5, -0x1

    if-ltz p3, :cond_6

    const/4 v0, 0x3

    if-le p3, v0, :cond_20

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v6, v5

    invoke-direct/range {v1 .. v6}, Landroid/media/MediaMetadataRetriever;->_getFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;
    .registers 9

    if-ltz p3, :cond_5

    const/4 v0, 0x3

    if-le p3, v0, :cond_1f

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    if-gtz p4, :cond_3b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    if-gtz p5, :cond_57

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaMetadataRetriever;->_getFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public native release()V
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    if-nez p2, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_17

    const-string/jumbo v0, "file"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_17
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    return-void

    :cond_1f
    const/4 v8, 0x0

    :try_start_20
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_23
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_23} :catch_33
    .catchall {:try_start_20 .. :try_end_23} :catchall_48

    move-result-object v10

    :try_start_24
    const-string/jumbo v0, "r"

    invoke-virtual {v10, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_2a} :catch_41
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_2a} :catch_33
    .catchall {:try_start_24 .. :try_end_2a} :catchall_48

    move-result-object v8

    if-nez v8, :cond_4f

    :try_start_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_33
    .catch Ljava/lang/SecurityException; {:try_start_2d .. :try_end_33} :catch_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_48

    :catch_33
    move-exception v7

    if-eqz v8, :cond_39

    :try_start_36
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_81

    :cond_39
    :goto_39
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    return-void

    :catch_41
    move-exception v6

    :try_start_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_48
    .catch Ljava/lang/SecurityException; {:try_start_42 .. :try_end_48} :catch_33
    .catchall {:try_start_42 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v0

    if-eqz v8, :cond_4e

    :try_start_4b
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_83

    :cond_4e
    :goto_4e
    throw v0

    :cond_4f
    :try_start_4f
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_5f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_5f
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_72

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_6c
    .catch Ljava/lang/SecurityException; {:try_start_4f .. :try_end_6c} :catch_33
    .catchall {:try_start_4f .. :try_end_6c} :catchall_48

    :goto_6c
    if-eqz v8, :cond_71

    :try_start_6e
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_7f

    :cond_71
    :goto_71
    return-void

    :cond_72
    :try_start_72
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_7e
    .catch Ljava/lang/SecurityException; {:try_start_72 .. :try_end_7e} :catch_33
    .catchall {:try_start_72 .. :try_end_7e} :catchall_48

    goto :goto_6c

    :catch_7f
    move-exception v9

    goto :goto_71

    :catch_81
    move-exception v9

    goto :goto_39

    :catch_83
    move-exception v9

    goto :goto_4e
.end method

.method public setDataSource(Landroid/media/MediaDataSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/media/MediaMetadataRetriever;->_setDataSource(Landroid/media/MediaDataSource;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public setDataSource(Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v10, 0x0

    if-nez p1, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_9
    const/4 v8, 0x0

    :try_start_a
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_30
    .catchall {:try_start_a .. :try_end_f} :catchall_57

    :try_start_f
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1e} :catch_5e
    .catchall {:try_start_f .. :try_end_1e} :catchall_5a

    if-eqz v9, :cond_23

    :try_start_20
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_23} :catch_26
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_54

    :cond_23
    :goto_23
    if-eqz v10, :cond_53

    :try_start_25
    throw v10
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_26} :catch_26
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_26} :catch_54

    :catch_26
    move-exception v6

    move-object v8, v9

    :goto_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :catch_2e
    move-exception v10

    goto :goto_23

    :catch_30
    move-exception v0

    :goto_31
    :try_start_31
    throw v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    :goto_36
    if-eqz v8, :cond_3b

    :try_start_38
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_40
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_3b} :catch_3e
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_4b

    :cond_3b
    :goto_3b
    if-eqz v2, :cond_52

    :try_start_3d
    throw v2

    :catch_3e
    move-exception v6

    goto :goto_28

    :catch_40
    move-exception v3

    if-nez v2, :cond_45

    move-object v2, v3

    goto :goto_3b

    :cond_45
    if-eq v2, v3, :cond_3b

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_4a} :catch_3e
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_4a} :catch_4b

    goto :goto_3b

    :catch_4b
    move-exception v7

    :goto_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_52
    :try_start_52
    throw v0
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_53} :catch_3e
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_53} :catch_4b

    :cond_53
    return-void

    :catch_54
    move-exception v7

    move-object v8, v9

    goto :goto_4c

    :catchall_57
    move-exception v0

    move-object v2, v10

    goto :goto_36

    :catchall_5a
    move-exception v0

    move-object v8, v9

    move-object v2, v10

    goto :goto_36

    :catch_5e
    move-exception v0

    move-object v8, v9

    goto :goto_31
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_34
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, v5, p1, v3, v4}, Landroid/media/MediaMetadataRetriever;->_setDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
