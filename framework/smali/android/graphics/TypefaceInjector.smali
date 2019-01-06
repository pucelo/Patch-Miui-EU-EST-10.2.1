.class public Landroid/graphics/TypefaceInjector;
.super Ljava/lang/Object;
.source "TypefaceInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TypefaceInjetor"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFontToFamily(Landroid/graphics/FontFamily;Landroid/text/FontConfig$Font;Ljava/util/Map;)Z
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/FontFamily;",
            "Landroid/text/FontConfig$Font;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)Z"
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/data/system/theme/fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/text/FontConfig$Font;->getFontName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v17, Ljava/io/File;

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_25

    const/4 v3, 0x0

    return v3

    :cond_25
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    if-nez v9, :cond_9c

    const/4 v8, 0x0

    const/4 v15, 0x0

    :try_start_33
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_3c} :catch_7e
    .catchall {:try_start_33 .. :try_end_3c} :catchall_e8

    :try_start_3c
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v9

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_53} :catch_f0
    .catchall {:try_start_3c .. :try_end_53} :catchall_eb

    if-eqz v16, :cond_58

    :try_start_55
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_7c
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_5b

    :cond_58
    :goto_58
    if-eqz v8, :cond_9c

    :try_start_5a
    throw v8
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5b} :catch_5b

    :catch_5b
    move-exception v14

    move-object/from16 v15, v16

    :goto_5e
    const-string/jumbo v3, "TypefaceInjetor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error mapping font file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :catch_7c
    move-exception v8

    goto :goto_58

    :catch_7e
    move-exception v3

    :goto_7f
    :try_start_7f
    throw v3
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_80

    :catchall_80
    move-exception v4

    move-object/from16 v19, v4

    move-object v4, v3

    move-object/from16 v3, v19

    :goto_86
    if-eqz v15, :cond_8b

    :try_start_88
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_8b} :catch_90
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8e

    :cond_8b
    :goto_8b
    if-eqz v4, :cond_9b

    :try_start_8d
    throw v4

    :catch_8e
    move-exception v14

    goto :goto_5e

    :catch_90
    move-exception v5

    if-nez v4, :cond_95

    move-object v4, v5

    goto :goto_8b

    :cond_95
    if-eq v4, v5, :cond_8b

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8b

    :cond_9b
    throw v3
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_9c} :catch_8e

    :cond_9c
    invoke-virtual/range {p1 .. p1}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/text/FontConfig$Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/text/FontConfig$Font;->getWeight()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/text/FontConfig$Font;->isItalic()Z

    move-result v3

    if-eqz v3, :cond_e4

    const/4 v13, 0x1

    :goto_af
    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v3

    if-nez v3, :cond_e6

    const-string/jumbo v3, "TypefaceInjetor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error creating font "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_e4
    const/4 v13, 0x0

    goto :goto_af

    :cond_e6
    const/4 v3, 0x1

    return v3

    :catchall_e8
    move-exception v3

    move-object v4, v8

    goto :goto_86

    :catchall_eb
    move-exception v3

    move-object/from16 v15, v16

    move-object v4, v8

    goto :goto_86

    :catch_f0
    move-exception v3

    move-object/from16 v15, v16

    goto :goto_7f
.end method
