.class public Landroid/graphics/FontFamily;
.super Ljava/lang/Object;
.source "FontFamily.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBuilderPtr:J

.field public mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "FontFamily"

    sput-object v0, Landroid/graphics/FontFamily;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nInitBuilder(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Landroid/graphics/FontFamily;->nInitBuilder(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    return-void
.end method

.method private static native nAbort(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nAddAxisValue(JIF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static nAddFont(JLjava/nio/ByteBuffer;I)Z
    .registers 10

    const/4 v4, -0x1

    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/FontFamily;->nAddFont(JLjava/nio/ByteBuffer;III)Z

    move-result v0

    return v0
.end method

.method private static native nAddFont(JLjava/nio/ByteBuffer;III)Z
.end method

.method private static native nAddFontFromAssetManager(JLandroid/content/res/AssetManager;Ljava/lang/String;IZIII)Z
.end method

.method private static native nAddFontWeightStyle(JLjava/nio/ByteBuffer;III)Z
.end method

.method private static native nAllowUnsupportedFont(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nCreateFamily(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInitBuilder(Ljava/lang/String;I)J
.end method

.method private static native nUnrefFamily(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public abortCreation()V
    .registers 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This FontFamily is already frozen or abandoned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nAbort(J)V

    iput-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    return-void
.end method

.method public addFont(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Z
    .registers 26

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-nez v3, :cond_13

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Unable to call addFont after freezing."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_13
    const/16 v18, 0x0

    const/16 v16, 0x0

    :try_start_17
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_20} :catch_85
    .catchall {:try_start_17 .. :try_end_20} :catchall_a3

    :try_start_20
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v10

    if-eqz p3, :cond_4c

    const/4 v3, 0x0

    move-object/from16 v0, p3

    array-length v4, v0

    :goto_36
    if-ge v3, v4, :cond_4c

    aget-object v14, p3, v3

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v14}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v5

    invoke-virtual {v14}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v11

    invoke-static {v8, v9, v5, v11}, Landroid/graphics/FontFamily;->nAddAxisValue(JIF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_4c
    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    move/from16 v11, p2

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-static/range {v8 .. v13}, Landroid/graphics/FontFamily;->nAddFont(JLjava/nio/ByteBuffer;III)Z
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_59} :catch_ad
    .catchall {:try_start_20 .. :try_end_59} :catchall_a7

    move-result v3

    if-eqz v17, :cond_5f

    :try_start_5c
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5f} :catch_82
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_62

    :cond_5f
    :goto_5f
    if-eqz v18, :cond_84

    :try_start_61
    throw v18
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_62} :catch_62

    :catch_62
    move-exception v15

    move-object/from16 v16, v17

    :goto_65
    sget-object v3, Landroid/graphics/FontFamily;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error mapping font file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :catch_82
    move-exception v18

    goto :goto_5f

    :cond_84
    return v3

    :catch_85
    move-exception v3

    :goto_86
    :try_start_86
    throw v3
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_87

    :catchall_87
    move-exception v4

    move-object/from16 v19, v4

    move-object v4, v3

    move-object/from16 v3, v19

    :goto_8d
    if-eqz v16, :cond_92

    :try_start_8f
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_92} :catch_97
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_95

    :cond_92
    :goto_92
    if-eqz v4, :cond_a2

    :try_start_94
    throw v4

    :catch_95
    move-exception v15

    goto :goto_65

    :catch_97
    move-exception v5

    if-nez v4, :cond_9c

    move-object v4, v5

    goto :goto_92

    :cond_9c
    if-eq v4, v5, :cond_92

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_92

    :cond_a2
    throw v3
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_a3} :catch_95

    :catchall_a3
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_8d

    :catchall_a7
    move-exception v3

    move-object/from16 v16, v17

    move-object/from16 v4, v18

    goto :goto_8d

    :catch_ad
    move-exception v3

    move-object/from16 v16, v17

    goto :goto_86
.end method

.method public addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z
    .registers 21

    iget-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_11

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unable to call addFontFromAsset after freezing."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    if-eqz p8, :cond_2b

    const/4 v2, 0x0

    move-object/from16 v0, p8

    array-length v3, v0

    :goto_17
    if-ge v2, v3, :cond_2b

    aget-object v11, p8, v2

    iget-wide v4, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v11}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v6

    invoke-virtual {v11}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/FontFamily;->nAddAxisValue(JIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2b
    iget-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v2 .. v10}, Landroid/graphics/FontFamily;->nAddFontFromAssetManager(JLandroid/content/res/AssetManager;Ljava/lang/String;IZIII)Z

    move-result v2

    return v2
.end method

.method public addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z
    .registers 13

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unable to call addFontWeightStyle after freezing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    if-eqz p3, :cond_29

    const/4 v0, 0x0

    array-length v1, p3

    :goto_15
    if-ge v0, v1, :cond_29

    aget-object v6, p3, v0

    iget-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v6}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/FontFamily;->nAddAxisValue(JIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_29
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    move-object v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/graphics/FontFamily;->nAddFontWeightStyle(JLjava/nio/ByteBuffer;III)Z

    move-result v0

    return v0
.end method

.method public allowUnsupportedFont()V
    .registers 5

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unable to allow unsupported font."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nAllowUnsupportedFont(J)V

    return-void
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v2, 0x0

    :try_start_2
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nUnrefFamily(J)V

    :cond_d
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nAbort(J)V
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1c

    :cond_18
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_1c
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public freeze()Z
    .registers 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This FontFamily is already frozen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nCreateFamily(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    iput-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method
