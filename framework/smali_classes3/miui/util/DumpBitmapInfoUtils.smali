.class public Lmiui/util/DumpBitmapInfoUtils;
.super Ljava/lang/Object;
.source "DumpBitmapInfoUtils.java"


# static fields
.field static final ENABLE:Z

.field static sBitmapThresholdSize:I

.field static sBitmapTitles:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field static sCurrProcess:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "DumpBitmapInfo"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/util/DumpBitmapInfoUtils;->ENABLE:Z

    sget-boolean v0, Lmiui/util/DumpBitmapInfoUtils;->ENABLE:Z

    if-eqz v0, :cond_15

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    :cond_15
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpBitmapInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 40

    sget-boolean v29, Lmiui/util/DumpBitmapInfoUtils;->ENABLE:Z

    if-nez v29, :cond_5

    return-void

    :cond_5
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    :goto_16
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_a8

    aget-object v4, p1, v29

    const-string/jumbo v33, "--bitmap"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_34

    const-string/jumbo v33, "-b"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_36

    :cond_34
    const/16 v17, 0x1

    :cond_36
    const-string/jumbo v33, "--exportbitmap"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_4c

    const-string/jumbo v33, "-e"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_4e

    :cond_4c
    const/16 v18, 0x1

    :cond_4e
    const-string/jumbo v33, "--nogc"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_5b

    const/16 v20, 0x1

    :cond_5b
    const-string/jumbo v33, "--includepreload"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_68

    const/16 v19, 0x1

    :cond_68
    const-string/jumbo v33, "--recycle:"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_91

    const-string/jumbo v33, "--recycle:0x"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_94

    const-string/jumbo v33, "--recycle:0x"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x10

    invoke-static/range {v33 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v27

    :cond_91
    :goto_91
    add-int/lit8 v29, v29, 0x1

    goto :goto_16

    :cond_94
    const-string/jumbo v33, "--recycle:"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x10

    invoke-static/range {v33 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v27

    goto :goto_91

    :cond_a8
    if-nez v17, :cond_af

    xor-int/lit8 v29, v18, 0x1

    if-eqz v29, :cond_af

    return-void

    :cond_af
    if-nez v20, :cond_b4

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_b4
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v29

    if-eqz v29, :cond_d5

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_d5

    const-string/jumbo v29, "system"

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_136

    :cond_d5
    new-instance v13, Ljava/io/File;

    const-string/jumbo v29, "/data/system/_exportbitmap/"

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_df
    if-eqz v18, :cond_ea

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_160

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    :cond_ea
    :goto_ea
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v26, Lcom/android/internal/util/FastPrintWriter;

    move-object/from16 v0, v26

    invoke-direct {v0, v15}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v30, 0x0

    const/4 v5, 0x0

    :try_start_fb
    sget-object v32, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    monitor-enter v32
    :try_end_fe
    .catchall {:try_start_fb .. :try_end_fe} :catchall_131

    :try_start_fe
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    sget-object v29, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    invoke-virtual/range {v29 .. v29}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_10d
    :goto_10d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_169

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    new-instance v24, Ljava/util/AbstractMap$SimpleEntry;

    move-object/from16 v0, v24

    invoke-direct {v0, v10}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-virtual/range {v24 .. v24}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v29

    if-eqz v29, :cond_10d

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12d
    .catchall {:try_start_fe .. :try_end_12d} :catchall_12e

    goto :goto_10d

    :catchall_12e
    move-exception v29

    :try_start_12f
    monitor-exit v32

    throw v29
    :try_end_131
    .catchall {:try_start_12f .. :try_end_131} :catchall_131

    :catchall_131
    move-exception v29

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintWriter;->flush()V

    throw v29

    :cond_136
    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v29

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "_exportbitmap/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_df

    :cond_160
    :try_start_160
    invoke-static {v13}, Llibcore/io/IoUtils;->deleteContents(Ljava/io/File;)V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_163} :catch_164

    goto :goto_ea

    :catch_164
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ea

    :cond_169
    :try_start_169
    monitor-exit v32

    new-instance v29, Lmiui/util/DumpBitmapInfoUtils$1;

    invoke-direct/range {v29 .. v29}, Lmiui/util/DumpBitmapInfoUtils$1;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string/jumbo v29, "All big bitmaps (debug.bitmap_threshold_size = %d k):\n"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    sget v33, Lmiui/util/DumpBitmapInfoUtils;->sBitmapThresholdSize:I

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x0

    aput-object v33, v32, v34

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v25

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1a4
    :goto_1a4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2aa

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v29

    if-nez v29, :cond_1a4

    const/16 v21, 0x0

    const/16 v16, 0x0

    :goto_1c0
    invoke-virtual/range {v25 .. v25}, Landroid/util/LongSparseArray;->size()I

    move-result v29

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_1de

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-static {v9}, Lmiui/util/DumpBitmapInfoUtils;->getBitmapFromDrawableState(Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, v29

    if-ne v0, v6, :cond_29c

    const/16 v21, 0x1

    :cond_1de
    if-eqz v21, :cond_1e4

    xor-int/lit8 v29, v19, 0x1

    if-nez v29, :cond_1a4

    :cond_1e4
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v32, v0

    add-long v30, v30, v32

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/CharSequence;

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v21

    invoke-static {v6, v0, v1, v2}, Lmiui/util/DumpBitmapInfoUtils;->getBitmapMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ZZ)Ljava/lang/String;

    move-result-object v23

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "  "

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_226
    .catchall {:try_start_169 .. :try_end_226} :catchall_131

    if-eqz v18, :cond_278

    :try_start_228
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v32, "_"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/CharSequence;

    const/16 v33, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v33

    move/from16 v2, v21

    invoke-static {v6, v0, v1, v2}, Lmiui/util/DumpBitmapInfoUtils;->getBitmapMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ZZ)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v28, Ljava/io/FileOutputStream;

    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    invoke-direct {v0, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct/range {v28 .. v29}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v29, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v32, 0x64

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v28

    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V
    :try_end_278
    .catch Ljava/lang/Exception; {:try_start_228 .. :try_end_278} :catch_2a0
    .catchall {:try_start_228 .. :try_end_278} :catchall_131

    :cond_278
    :goto_278
    if-eqz v27, :cond_291

    :try_start_27a
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v27

    if-ne v0, v1, :cond_291

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    const-string/jumbo v29, "  now recycled."

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_291
    const/16 v29, 0xa

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    goto/16 :goto_1a4

    :cond_29c
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1c0

    :catch_2a0
    move-exception v12

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_278

    :cond_2aa
    const-string/jumbo v29, "Total count: %d, size: %dM\n"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x0

    aput-object v33, v32, v34

    const-wide/16 v34, 0x400

    div-long v34, v30, v34

    const-wide/16 v36, 0x400

    div-long v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    const/16 v34, 0x1

    aput-object v33, v32, v34

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    if-eqz v18, :cond_32c

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Export bitmap. Path: "

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v32, "\n"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "DumpBitmapInfo"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Export bitmaps finished. Path: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32c
    const-string/jumbo v29, "\n"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_340
    .catchall {:try_start_27a .. :try_end_340} :catchall_131

    invoke-virtual/range {v26 .. v26}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method private static formatMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .registers 8

    const-string/jumbo v0, "0x%8x %,6dk %dx%d %s %s"

    const-string/jumbo v2, "0x%8x %,6dk %dx%d %s %s"

    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v3, v4

    if-eqz p2, :cond_4c

    const-string/jumbo v1, "preload"

    :goto_3c
    const/4 v4, 0x4

    aput-object v1, v3, v4

    if-nez p1, :cond_50

    const-string/jumbo v1, ""

    :goto_44
    const/4 v4, 0x5

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4c
    const-string/jumbo v1, ""

    goto :goto_3c

    :cond_50
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_44
.end method

.method private static getBitmapFromDrawableState(Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "BitmapState"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "mBitmap"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    return-object v4

    :cond_28
    const-string/jumbo v4, "NinePatchState"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "mNinePatch"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/NinePatch;

    if-nez v3, :cond_49

    return-object v6

    :cond_49
    invoke-virtual {v3}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4c} :catch_4f

    move-result-object v4

    return-object v4

    :cond_4e
    return-object v6

    :catch_4f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v6
.end method

.method private static getBitmapMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ZZ)Ljava/lang/String;
    .registers 11

    const/16 v6, 0x2d

    invoke-static {p0, p1, p3}, Lmiui/util/DumpBitmapInfoUtils;->formatMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_9

    return-object v1

    :cond_9
    const/16 v0, 0xf0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v2, v3, -0xf0

    if-lez v2, :cond_27

    if-eqz p1, :cond_27

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v2, :cond_27

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lmiui/util/DumpBitmapInfoUtils;->formatMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v1

    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x20

    const/16 v5, 0x5f

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5c

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static isTrackingNeeded(Landroid/graphics/Bitmap;)Z
    .registers 4

    sget v1, Lmiui/util/DumpBitmapInfoUtils;->sCurrProcess:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_19

    const-string/jumbo v1, "debug.bitmap_threshold_size"

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lmiui/util/DumpBitmapInfoUtils;->sBitmapThresholdSize:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    sput v1, Lmiui/util/DumpBitmapInfoUtils;->sCurrProcess:I

    :cond_19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit16 v0, v1, 0x100

    sget v1, Lmiui/util/DumpBitmapInfoUtils;->sBitmapThresholdSize:I

    if-lt v0, v1, :cond_2a

    const/4 v1, 0x1

    :goto_29
    return v1

    :cond_2a
    const/4 v1, 0x0

    goto :goto_29
.end method

.method public static putBitmap(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .registers 5

    sget-boolean v1, Lmiui/util/DumpBitmapInfoUtils;->ENABLE:Z

    if-nez v1, :cond_5

    return-void

    :cond_5
    if-nez p0, :cond_8

    return-void

    :cond_8
    :try_start_8
    invoke-static {p0}, Lmiui/util/DumpBitmapInfoUtils;->isTrackingNeeded(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    :cond_f
    sget-object v2, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    monitor-enter v2
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_12} :catch_1c

    :try_start_12
    sget-object v1, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_19

    :try_start_17
    monitor-exit v2

    :goto_18
    return-void

    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1c} :catch_1c

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_18
.end method
