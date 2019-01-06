.class public Lorg/egret/plugin/mi/android/util/launcher/ZipClass;
.super Ljava/lang/Object;
.source "ZipClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "ZipClass"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doUnzip(Ljava/io/File;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;)Z
    .registers 24

    if-eqz p1, :cond_4

    if-nez p2, :cond_10

    :cond_4
    const-string/jumbo v17, "ZipClass"

    const-string/jumbo v18, "src or dstRoot may be null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    return v17

    :cond_10
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_60

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdirs()Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_60

    const-string/jumbo v17, "ZipClass"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "fail to mkdir "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_5d

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "fail to mkdir "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    :cond_5d
    const/16 v17, 0x0

    return v17

    :cond_60
    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_63
    new-instance v16, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6c} :catch_270
    .catchall {:try_start_63 .. :try_end_6c} :catchall_244

    :try_start_6c
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->size()I

    move-result v13

    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_74} :catch_1ba
    .catchall {:try_start_6c .. :try_end_74} :catchall_267

    move-result-object v5

    move-object v10, v9

    :cond_76
    :goto_76
    :try_start_76
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_1e8

    if-eqz p3, :cond_b8

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_b8

    const-string/jumbo v17, "zip thread is cancelled"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_94} :catch_273
    .catchall {:try_start_76 .. :try_end_94} :catchall_26b

    const/16 v17, 0x0

    if-eqz v16, :cond_9b

    :try_start_98
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V

    :cond_9b
    if-eqz v7, :cond_a0

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_a0
    if-eqz v10, :cond_a5

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a5} :catch_a6

    :cond_a5
    :goto_a5
    return v17

    :catch_a6
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p3, :cond_a5

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    goto :goto_a5

    :cond_b8
    add-int/lit8 v2, v2, 0x1

    if-eqz p3, :cond_c1

    :try_start_bc
    move-object/from16 v0, p3

    invoke-interface {v0, v2, v13}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onProgress(II)V

    :cond_c1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    new-instance v14, Ljava/io/File;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_143

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v17

    if-nez v17, :cond_76

    const-string/jumbo v17, "ZipClass"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "fail to mkdir "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_11f

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "fail to mkdir "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_11f} :catch_273
    .catchall {:try_start_bc .. :try_end_11f} :catchall_26b

    :cond_11f
    const/16 v17, 0x0

    if-eqz v16, :cond_126

    :try_start_123
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V

    :cond_126
    if-eqz v7, :cond_12b

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_12b
    if-eqz v10, :cond_130

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_130} :catch_131

    :cond_130
    :goto_130
    return v17

    :catch_131
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p3, :cond_130

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    goto :goto_130

    :cond_143
    :try_start_143
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v8, v0

    const/4 v11, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_156} :catch_273
    .catchall {:try_start_143 .. :try_end_156} :catchall_26b

    const/16 v17, 0x400

    :try_start_158
    move/from16 v0, v17

    new-array v3, v0, [B

    :cond_15c
    :goto_15c
    const/16 v17, 0x0

    const/16 v18, 0x400

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v12, v0, :cond_1df

    if-eqz p3, :cond_1aa

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_1aa

    const-string/jumbo v17, "zip thread is cancelled"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_186} :catch_1ba
    .catchall {:try_start_158 .. :try_end_186} :catchall_267

    const/16 v17, 0x0

    if-eqz v16, :cond_18d

    :try_start_18a
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V

    :cond_18d
    if-eqz v7, :cond_192

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_192
    if-eqz v9, :cond_197

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_197
    .catch Ljava/io/IOException; {:try_start_18a .. :try_end_197} :catch_198

    :cond_197
    :goto_197
    return v17

    :catch_198
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p3, :cond_197

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    goto :goto_197

    :cond_1aa
    const/16 v17, 0x0

    :try_start_1ac
    move/from16 v0, v17

    invoke-virtual {v9, v3, v0, v12}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v11, v12

    if-eqz p3, :cond_15c

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v8}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onFileProgress(II)V
    :try_end_1b9
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1b9} :catch_1ba
    .catchall {:try_start_1ac .. :try_end_1b9} :catchall_267

    goto :goto_15c

    :catch_1ba
    move-exception v4

    move-object/from16 v15, v16

    :goto_1bd
    :try_start_1bd
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p3, :cond_1cd

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V
    :try_end_1cd
    .catchall {:try_start_1bd .. :try_end_1cd} :catchall_244

    :cond_1cd
    const/16 v17, 0x0

    if-eqz v15, :cond_1d4

    :try_start_1d1
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V

    :cond_1d4
    if-eqz v7, :cond_1d9

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_1d9
    if-eqz v9, :cond_1de

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1de
    .catch Ljava/io/IOException; {:try_start_1d1 .. :try_end_1de} :catch_232

    :cond_1de
    :goto_1de
    return v17

    :cond_1df
    :try_start_1df
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1e5
    .catch Ljava/io/IOException; {:try_start_1df .. :try_end_1e5} :catch_1ba
    .catchall {:try_start_1df .. :try_end_1e5} :catchall_267

    move-object v10, v9

    goto/16 :goto_76

    :cond_1e8
    :try_start_1e8
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V

    const-string/jumbo v17, "ZipClass"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "success to unzip "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_20e

    invoke-interface/range {p3 .. p3}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onSuccess()V
    :try_end_20e
    .catch Ljava/io/IOException; {:try_start_1e8 .. :try_end_20e} :catch_273
    .catchall {:try_start_1e8 .. :try_end_20e} :catchall_26b

    :cond_20e
    const/16 v17, 0x1

    if-eqz v16, :cond_215

    :try_start_212
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V

    :cond_215
    if-eqz v7, :cond_21a

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_21a
    if-eqz v10, :cond_21f

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_21f
    .catch Ljava/io/IOException; {:try_start_212 .. :try_end_21f} :catch_220

    :cond_21f
    :goto_21f
    return v17

    :catch_220
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p3, :cond_21f

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    goto :goto_21f

    :catch_232
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p3, :cond_1de

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    goto :goto_1de

    :catchall_244
    move-exception v17

    :goto_245
    if-eqz v15, :cond_24a

    :try_start_247
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V

    :cond_24a
    if-eqz v7, :cond_24f

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_24f
    if-eqz v9, :cond_254

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_254
    .catch Ljava/io/IOException; {:try_start_247 .. :try_end_254} :catch_255

    :cond_254
    :goto_254
    throw v17

    :catch_255
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p3, :cond_254

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    goto :goto_254

    :catchall_267
    move-exception v17

    move-object/from16 v15, v16

    goto :goto_245

    :catchall_26b
    move-exception v17

    move-object v9, v10

    move-object/from16 v15, v16

    goto :goto_245

    :catch_270
    move-exception v4

    goto/16 :goto_1bd

    :catch_273
    move-exception v4

    move-object v9, v10

    move-object/from16 v15, v16

    goto/16 :goto_1bd
.end method


# virtual methods
.method public unzip(Ljava/io/File;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;)V
    .registers 6

    if-nez p3, :cond_b

    const-string/jumbo v0, "ZipClass"

    const-string/jumbo v1, "listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass;->doUnzip(Ljava/io/File;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;)Z

    return-void
.end method

.method public unzip(Ljava/io/File;Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass;->doUnzip(Ljava/io/File;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;)Z

    move-result v0

    return v0
.end method
