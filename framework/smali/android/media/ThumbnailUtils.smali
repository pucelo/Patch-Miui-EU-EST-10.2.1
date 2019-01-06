.class public Landroid/media/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    }
.end annotation


# static fields
.field private static final MAX_NUM_PIXELS_MICRO_THUMBNAIL:I = 0x4b00

.field private static final MAX_NUM_PIXELS_THUMBNAIL:I = 0x30000

.field private static final OPTIONS_NONE:I = 0x0

.field public static final OPTIONS_RECYCLE_INPUT:I = 0x2

.field private static final OPTIONS_SCALE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThumbnailUtils"

.field public static final TARGET_SIZE_MICRO_THUMBNAIL:I = 0x60

.field public static final TARGET_SIZE_MINI_THUMBNAIL:I = 0x140

.field private static final UNCONSTRAINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 14

    const/4 v10, -0x1

    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v6

    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v6

    if-ne p2, v10, :cond_11

    const/4 v2, 0x1

    :goto_a
    if-ne p1, v10, :cond_1f

    const/16 v3, 0x80

    :goto_e
    if-ge v3, v2, :cond_33

    return v2

    :cond_11
    mul-double v6, v4, v0

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    goto :goto_a

    :cond_1f
    int-to-double v6, p1

    div-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    int-to-double v8, p1

    div-double v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-int v3, v6

    goto :goto_e

    :cond_33
    if-ne p2, v10, :cond_39

    if-ne p1, v10, :cond_39

    const/4 v6, 0x1

    return v6

    :cond_39
    if-ne p1, v10, :cond_3c

    return v2

    :cond_3c
    return v3
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 6

    invoke-static {p0, p1, p2}, Landroid/media/ThumbnailUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_e

    const/4 v1, 0x1

    :goto_9
    if-ge v1, v0, :cond_14

    shl-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_e
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    :cond_14
    return v1
.end method

.method public static createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 18

    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_5d

    const/4 v12, 0x1

    :goto_6
    if-eqz v12, :cond_5f

    const/16 v11, 0x140

    :goto_a
    if-eqz v12, :cond_62

    const/high16 v5, 0x30000

    :goto_e
    new-instance v8, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;

    const/4 v13, 0x0

    invoke-direct {v8, v13}, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;-><init>(Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V

    const/4 v1, 0x0

    invoke-static/range {p0 .. p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v4

    if-eqz v4, :cond_30

    iget v13, v4, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v14, 0x1f

    if-eq v13, v14, :cond_29

    iget v13, v4, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v13}, Landroid/media/MediaFile;->isRawImageFileType(I)Z

    move-result v13

    if-eqz v13, :cond_30

    :cond_29
    move-object/from16 v0, p0

    invoke-static {v0, v11, v5, v8}, Landroid/media/ThumbnailUtils;->createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V

    iget-object v1, v8, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    :cond_30
    if-nez v1, :cond_84

    const/4 v9, 0x0

    :try_start_33
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3a} :catch_de
    .catch Ljava/lang/OutOfMemoryError; {:try_start_33 .. :try_end_3a} :catch_a9
    .catchall {:try_start_33 .. :try_end_3a} :catchall_f9

    :try_start_3a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v13, 0x1

    iput v13, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v13, 0x1

    iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v13, 0x0

    invoke-static {v3, v13, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v13, :cond_56

    iget v13, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_53} :catch_10e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3a .. :try_end_53} :catch_111
    .catchall {:try_start_3a .. :try_end_53} :catchall_10b

    const/4 v14, -0x1

    if-ne v13, v14, :cond_65

    :cond_56
    const/4 v13, 0x0

    if-eqz v10, :cond_5c

    :try_start_59
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_93

    :cond_5c
    :goto_5c
    return-object v13

    :cond_5d
    const/4 v12, 0x0

    goto :goto_6

    :cond_5f
    const/16 v11, 0x60

    goto :goto_a

    :cond_62
    const/16 v5, 0x4b00

    goto :goto_e

    :cond_65
    :try_start_65
    iget v13, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_56

    invoke-static {v7, v11, v5}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v13

    iput v13, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v13, 0x0

    iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v13, 0x0

    iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v13, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v13, 0x0

    invoke-static {v3, v13, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_7e} :catch_10e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_65 .. :try_end_7e} :catch_111
    .catchall {:try_start_65 .. :try_end_7e} :catchall_10b

    move-result-object v1

    if-eqz v10, :cond_84

    :try_start_81
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_9e

    :cond_84
    :goto_84
    const/4 v13, 0x3

    move/from16 v0, p1

    if-ne v0, v13, :cond_92

    const/16 v13, 0x60

    const/16 v14, 0x60

    const/4 v15, 0x2

    invoke-static {v1, v13, v14, v15}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_92
    return-object v1

    :catch_93
    move-exception v2

    const-string/jumbo v14, "ThumbnailUtils"

    const-string/jumbo v15, ""

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    :catch_9e
    move-exception v2

    const-string/jumbo v13, "ThumbnailUtils"

    const-string/jumbo v14, ""

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_84

    :catch_a9
    move-exception v6

    :goto_aa
    :try_start_aa
    const-string/jumbo v13, "ThumbnailUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unable to decode file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ". OutOfMemoryError."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cd
    .catchall {:try_start_aa .. :try_end_cd} :catchall_f9

    if-eqz v9, :cond_84

    :try_start_cf
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d3

    goto :goto_84

    :catch_d3
    move-exception v2

    const-string/jumbo v13, "ThumbnailUtils"

    const-string/jumbo v14, ""

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_84

    :catch_de
    move-exception v2

    :goto_df
    :try_start_df
    const-string/jumbo v13, "ThumbnailUtils"

    const-string/jumbo v14, ""

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e8
    .catchall {:try_start_df .. :try_end_e8} :catchall_f9

    if-eqz v9, :cond_84

    :try_start_ea
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_ee

    goto :goto_84

    :catch_ee
    move-exception v2

    const-string/jumbo v13, "ThumbnailUtils"

    const-string/jumbo v14, ""

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_84

    :catchall_f9
    move-exception v13

    :goto_fa
    if-eqz v9, :cond_ff

    :try_start_fc
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_ff} :catch_100

    :cond_ff
    :goto_ff
    throw v13

    :catch_100
    move-exception v2

    const-string/jumbo v14, "ThumbnailUtils"

    const-string/jumbo v15, ""

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ff

    :catchall_10b
    move-exception v13

    move-object v9, v10

    goto :goto_fa

    :catch_10e
    move-exception v2

    move-object v9, v10

    goto :goto_df

    :catch_111
    move-exception v6

    move-object v9, v10

    goto :goto_aa
.end method

.method private static createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V
    .registers 16

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    const/4 v8, 0x0

    :try_start_5
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_61

    :try_start_a
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_73

    move-result-object v8

    move-object v1, v2

    :goto_f
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x0

    const/4 v6, 0x0

    if-eqz v8, :cond_31

    const/4 v10, 0x1

    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v10, v8

    const/4 v11, 0x0

    invoke-static {v8, v11, v10, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v3, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v10

    iput v10, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v4, v10, v11

    :cond_31
    const/4 v10, 0x1

    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v5, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v10

    iput v10, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v6, v10, v11

    if-eqz v8, :cond_69

    if-lt v4, v6, :cond_69

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v10, 0x0

    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v10, v8

    const/4 v11, 0x0

    invoke-static {v8, v11, v10, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v10, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_60

    iput-object v8, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailData:[B

    iput v9, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailWidth:I

    iput v7, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailHeight:I

    :cond_60
    :goto_60
    return-void

    :catch_61
    move-exception v0

    :goto_62
    const-string/jumbo v10, "ThumbnailUtils"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    :cond_69
    const/4 v10, 0x0

    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_60

    :catch_73
    move-exception v0

    move-object v1, v2

    goto :goto_62
.end method

.method public static createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 15

    const/4 v0, 0x0

    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_6
    invoke-virtual {v6, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v10, -0x1

    invoke-virtual {v6, v10, v11}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_e} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_e} :catch_18
    .catchall {:try_start_6 .. :try_end_e} :catchall_26

    move-result-object v0

    :try_start_f
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_12} :catch_16

    :goto_12
    if-nez v0, :cond_2d

    const/4 v10, 0x0

    return-object v10

    :catch_16
    move-exception v2

    goto :goto_12

    :catch_18
    move-exception v2

    :try_start_19
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_12

    :catch_1d
    move-exception v2

    goto :goto_12

    :catch_1f
    move-exception v1

    :try_start_20
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_12

    :catch_24
    move-exception v2

    goto :goto_12

    :catchall_26
    move-exception v10

    :try_start_27
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_2a} :catch_2b

    :goto_2a
    throw v10

    :catch_2b
    move-exception v2

    goto :goto_2a

    :cond_2d
    const/4 v10, 0x1

    if-ne p1, v10, :cond_57

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v10, 0x200

    if-le v5, v10, :cond_56

    int-to-float v10, v5

    const/high16 v11, 0x44000000    # 512.0f

    div-float v7, v11, v10

    int-to-float v10, v9

    mul-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v10, v4

    mul-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v10, 0x1

    invoke-static {v0, v8, v3, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_56
    :goto_56
    return-object v0

    :cond_57
    const/4 v10, 0x3

    if-ne p1, v10, :cond_56

    const/16 v10, 0x60

    const/16 v11, 0x60

    const/4 v12, 0x2

    invoke-static {v0, v10, v11, v12}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_56
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v3, 0x0

    if-nez p0, :cond_4

    return-object v3

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_25

    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    :goto_16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    or-int/lit8 v3, p3, 0x1

    invoke-static {v0, p0, p1, p2, v3}, Landroid/media/ThumbnailUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    :cond_25
    int-to-float v3, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    goto :goto_16
.end method

.method private static makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 13

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    if-nez p4, :cond_9

    :try_start_5
    invoke-static {p2, p3}, Landroid/media/ThumbnailUtils;->makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_8} :catch_4e
    .catchall {:try_start_5 .. :try_end_8} :catchall_5c

    move-result-object p4

    :cond_9
    if-nez p4, :cond_f

    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    return-object v6

    :cond_f
    if-nez p5, :cond_17

    :try_start_11
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object p5, v3

    :cond_17
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    iput v4, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x1

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    invoke-static {v2, v4, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v4, :cond_2d

    iget v4, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_2b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_2b} :catch_4e
    .catchall {:try_start_11 .. :try_end_2b} :catchall_5c

    if-ne v4, v5, :cond_31

    :cond_2d
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    return-object v6

    :cond_31
    :try_start_31
    iget v4, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v4, v5, :cond_2d

    invoke-static {p5, p0, p1}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-static {v2, v4, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_49
    .catch Ljava/lang/OutOfMemoryError; {:try_start_31 .. :try_end_49} :catch_4e
    .catchall {:try_start_31 .. :try_end_49} :catchall_5c

    move-result-object v0

    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    return-object v0

    :catch_4e
    move-exception v1

    :try_start_4f
    const-string/jumbo v4, "ThumbnailUtils"

    const-string/jumbo v5, "Got oom exception "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_5c

    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    return-object v6

    :catchall_5c
    move-exception v4

    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v4
.end method

.method private static makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .registers 4

    :try_start_0
    const-string/jumbo v1, "r"

    invoke-virtual {p1, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v1

    return-object v1

    :catch_8
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 35

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_91

    const/16 v27, 0x1

    :goto_6
    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_95

    const/16 v25, 0x1

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v16, v3, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v18, v3, p3

    if-nez v27, :cond_99

    if-ltz v16, :cond_1e

    if-gez v18, :cond_99

    :cond_1e
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    div-int/lit8 v3, v16, 0x2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    div-int/lit8 v3, v18, 0x2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v19

    new-instance v28, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v3, v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v19

    move-object/from16 v0, v28

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, p2, v3

    div-int/lit8 v21, v3, 0x2

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v22, v3, 0x2

    new-instance v20, Landroid/graphics/Rect;

    sub-int v3, p2, v21

    sub-int v4, p3, v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz v25, :cond_8c

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8c
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v11

    :cond_91
    const/16 v27, 0x0

    goto/16 :goto_6

    :cond_95
    const/16 v25, 0x0

    goto/16 :goto_c

    :cond_99
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v14, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    div-float v12, v14, v13

    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v29, v3, v4

    cmpl-float v3, v12, v29

    if-lez v3, :cond_11b

    move/from16 v0, p3

    int-to-float v3, v0

    div-float v26, v3, v13

    const v3, 0x3f666666    # 0.9f

    cmpg-float v3, v26, v3

    if-ltz v3, :cond_c3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v26, v3

    if-lez v3, :cond_118

    :cond_c3
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_cc
    if-eqz p0, :cond_13a

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v8, p0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    :goto_e1
    if-eqz v25, :cond_ea

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_ea

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_ea
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v3, p2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v23

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, v3, p3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v24

    div-int/lit8 v3, v23, 0x2

    div-int/lit8 v4, v24, 0x2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eq v11, v10, :cond_117

    if-nez v25, :cond_114

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_117

    :cond_114
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    :cond_117
    return-object v11

    :cond_118
    const/16 p0, 0x0

    goto :goto_cc

    :cond_11b
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v26, v3, v14

    const v3, 0x3f666666    # 0.9f

    cmpg-float v3, v26, v3

    if-ltz v3, :cond_12d

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v26, v3

    if-lez v3, :cond_137

    :cond_12d
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_cc

    :cond_137
    const/16 p0, 0x0

    goto :goto_cc

    :cond_13a
    move-object/from16 v10, p1

    goto :goto_e1
.end method
