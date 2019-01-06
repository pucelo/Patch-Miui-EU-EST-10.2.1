.class public Landroid/provider/FontsContract;
.super Ljava/lang/Object;
.source "FontsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/FontsContract$1;,
        Landroid/provider/FontsContract$Columns;,
        Landroid/provider/FontsContract$FontFamilyResult;,
        Landroid/provider/FontsContract$FontInfo;,
        Landroid/provider/FontsContract$FontRequestCallback;
    }
.end annotation


# static fields
.field private static final SYNC_FONT_FETCH_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "FontsContract"

.field private static final THREAD_RENEWAL_THRESHOLD_MS:I = 0x2710

.field private static final sByteArrayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field

.field private static volatile sContext:Landroid/content/Context;

.field private static sHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sInQueueSet:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static final sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

.field private static sThread:Landroid/os/HandlerThread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sTypefaceCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/provider/FontsContract;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1()Landroid/os/HandlerThread;
    .registers 1

    sget-object v0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic -set0(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1

    sput-object p0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic -set1(Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .registers 1

    sput-object p0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/FontsContract;->sLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    new-instance v0, Landroid/provider/FontsContract$1;

    invoke-direct {v0}, Landroid/provider/FontsContract$1;-><init>()V

    sput-object v0, Landroid/provider/FontsContract;->sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    sget-object v0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c;->$INST$0:Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c;

    sput-object v0, Landroid/provider/FontsContract;->sByteArrayComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/provider/FontsContract$FontInfo;)Landroid/graphics/Typeface;
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v2

    :cond_8
    invoke-static {p0, p2, p1}, Landroid/provider/FontsContract;->prepareFontData(Landroid/content/Context;[Landroid/provider/FontsContract$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    return-object v2

    :cond_13
    new-instance v1, Landroid/graphics/Typeface$Builder;

    invoke-direct {v1, p2, v0}, Landroid/graphics/Typeface$Builder;-><init>([Landroid/provider/FontsContract$FontInfo;Ljava/util/Map;)V

    invoke-virtual {v1}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method private static convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_15

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_15
    return-object v1
.end method

.method private static equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<[B>;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_26

    return v3

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_29
    const/4 v1, 0x1

    return v1
.end method

.method public static fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;)Landroid/provider/FontsContract$FontFamilyResult;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v3, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v5}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V

    return-object v3

    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/provider/FontsContract;->getProvider(Landroid/content/pm/PackageManager;Landroid/provider/FontRequest;)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-nez v2, :cond_1f

    new-instance v3, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v5}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V

    return-object v3

    :cond_1f
    :try_start_1f
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, p2, v3, p1}, Landroid/provider/FontsContract;->getFontFromProvider(Landroid/content/Context;Landroid/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroid/provider/FontsContract$FontInfo;

    move-result-object v1

    new-instance v3, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_2b} :catch_2c

    return-object v3

    :catch_2c
    move-exception v0

    new-instance v3, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v5}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V

    return-object v3
.end method

.method public static getFontFromProvider(Landroid/content/Context;Landroid/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroid/provider/FontsContract$FontInfo;
    .registers 33

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v4, "content"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v4, "content"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v4, "file"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    const/16 v25, 0x0

    const/4 v11, 0x0

    :try_start_3b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v26, "_id"

    const/16 v27, 0x0

    aput-object v26, v4, v27

    const-string/jumbo v26, "file_id"

    const/16 v27, 0x1

    aput-object v26, v4, v27

    const-string/jumbo v26, "font_ttc_index"

    const/16 v27, 0x2

    aput-object v26, v4, v27

    const-string/jumbo v26, "font_variation_settings"

    const/16 v27, 0x3

    aput-object v26, v4, v27

    const-string/jumbo v26, "font_weight"

    const/16 v27, 0x4

    aput-object v26, v4, v27

    const-string/jumbo v26, "font_italic"

    const/16 v27, 0x5

    aput-object v26, v4, v27

    const-string/jumbo v26, "result_code"

    const/16 v27, 0x6

    aput-object v26, v4, v27

    const-string/jumbo v5, "query = ?"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v6, v0, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v6, v27

    const/4 v7, 0x0

    move-object/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_150

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_150

    const-string/jumbo v2, "result_code"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_9f} :catch_181
    .catchall {:try_start_3b .. :try_end_9f} :catchall_177

    :try_start_9f
    const-string/jumbo v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    const-string/jumbo v2, "file_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v2, "font_ttc_index"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    const-string/jumbo v2, "font_variation_settings"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    const-string/jumbo v2, "font_weight"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    const-string/jumbo v2, "font_italic"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    :goto_c9
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_14e

    const/4 v2, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_138

    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    :goto_da
    const/4 v2, -0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_13a

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    :goto_e5
    const/4 v2, -0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_13c

    move/from16 v0, v23

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    :goto_f0
    const/4 v2, -0x1

    if-ne v13, v2, :cond_13f

    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    :goto_fd
    const/4 v2, -0x1

    move/from16 v0, v24

    if-eq v0, v2, :cond_14a

    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_14a

    move/from16 v0, v24

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_148

    const/4 v9, 0x1

    :goto_117
    invoke-static/range {v22 .. v22}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v7

    new-instance v4, Landroid/provider/FontsContract$FontInfo;

    invoke-direct/range {v4 .. v10}, Landroid/provider/FontsContract$FontInfo;-><init>(Landroid/net/Uri;I[Landroid/graphics/fonts/FontVariationAxis;IZI)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_125
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_125} :catch_126
    .catchall {:try_start_9f .. :try_end_125} :catchall_17b

    goto :goto_c9

    :catch_126
    move-exception v2

    move-object/from16 v18, v19

    :goto_129
    :try_start_129
    throw v2
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_12a

    :catchall_12a
    move-exception v4

    move-object/from16 v28, v4

    move-object v4, v2

    move-object/from16 v2, v28

    :goto_130
    if-eqz v11, :cond_135

    :try_start_132
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_135
    .catch Ljava/lang/Throwable; {:try_start_132 .. :try_end_135} :catch_15a

    :cond_135
    :goto_135
    if-eqz v4, :cond_16a

    throw v4

    :cond_138
    const/4 v10, 0x0

    goto :goto_da

    :cond_13a
    const/4 v6, 0x0

    goto :goto_e5

    :cond_13c
    const/16 v22, 0x0

    goto :goto_f0

    :cond_13f
    :try_start_13f
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_146
    .catch Ljava/lang/Throwable; {:try_start_13f .. :try_end_146} :catch_126
    .catchall {:try_start_13f .. :try_end_146} :catchall_17b

    move-result-object v5

    goto :goto_fd

    :cond_148
    const/4 v9, 0x0

    goto :goto_117

    :cond_14a
    const/16 v8, 0x190

    const/4 v9, 0x0

    goto :goto_117

    :cond_14e
    move-object/from16 v18, v19

    :cond_150
    if-eqz v11, :cond_155

    :try_start_152
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_155
    .catch Ljava/lang/Throwable; {:try_start_152 .. :try_end_155} :catch_158

    :cond_155
    :goto_155
    if-eqz v25, :cond_16b

    throw v25

    :catch_158
    move-exception v25

    goto :goto_155

    :catch_15a
    move-exception v25

    if-nez v4, :cond_160

    move-object/from16 v4, v25

    goto :goto_135

    :cond_160
    move-object/from16 v0, v25

    if-eq v4, v0, :cond_135

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_135

    :cond_16a
    throw v2

    :cond_16b
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/provider/FontsContract$FontInfo;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/provider/FontsContract$FontInfo;

    return-object v2

    :catchall_177
    move-exception v2

    move-object/from16 v4, v25

    goto :goto_130

    :catchall_17b
    move-exception v2

    move-object/from16 v4, v25

    move-object/from16 v18, v19

    goto :goto_130

    :catch_181
    move-exception v2

    goto :goto_129
.end method

.method public static getFontSync(Landroid/provider/FontRequest;)Landroid/graphics/Typeface;
    .registers 17

    invoke-virtual/range {p0 .. p0}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Typeface;

    if-eqz v8, :cond_f

    return-object v8

    :cond_f
    sget-object v12, Landroid/provider/FontsContract;->sLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_12
    sget-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_34

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "fonts"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    sget-object v0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    :cond_34
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v7

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sget-object v13, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    new-instance v0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$3;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/provider/FontsContract;->sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/provider/FontsContract;->sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    const-wide/16 v14, 0x2710

    invoke-virtual {v0, v1, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x1f4

    invoke-virtual {v0, v14, v15}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_75
    .catchall {:try_start_12 .. :try_end_75} :catchall_df

    :try_start_75
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_86

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_81
    .catchall {:try_start_75 .. :try_end_81} :catchall_da

    :try_start_81
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_df

    monitor-exit v12

    return-object v0

    :cond_86
    :try_start_86
    invoke-interface {v7, v10, v11}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_89
    .catch Ljava/lang/InterruptedException; {:try_start_86 .. :try_end_89} :catch_9b
    .catchall {:try_start_86 .. :try_end_89} :catchall_da

    move-result-wide v10

    :goto_8a
    :try_start_8a
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9d

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_96
    .catchall {:try_start_8a .. :try_end_96} :catchall_da

    :try_start_96
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_df

    monitor-exit v12

    return-object v0

    :catch_9b
    move-exception v9

    goto :goto_8a

    :cond_9d
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-gtz v0, :cond_86

    const/4 v0, 0x1

    :try_start_a4
    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string/jumbo v0, "FontsContract"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Remote font fetch timed out: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v13, "/"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_a4 .. :try_end_d4} :catchall_da

    :try_start_d4
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_df

    const/4 v0, 0x0

    monitor-exit v12

    return-object v0

    :catchall_da
    move-exception v0

    :try_start_db
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_df
    .catchall {:try_start_db .. :try_end_df} :catchall_df

    :catchall_df
    move-exception v0

    monitor-exit v12

    throw v0
.end method

.method public static getProvider(Landroid/content/pm/PackageManager;Landroid/provider/FontRequest;)Landroid/content/pm/ProviderInfo;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {p0, v3, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_26

    new-instance v7, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No package found for authority: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_26
    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5b

    new-instance v7, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Found content provider "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", but package was not "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5b
    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v7

    if-eqz v7, :cond_64

    return-object v1

    :cond_64
    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x40

    invoke-virtual {p0, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v7}, Landroid/provider/FontsContract;->convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v6

    sget-object v7, Landroid/provider/FontsContract;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1}, Landroid/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    :goto_7c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_9c

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v7, Landroid/provider/FontsContract;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v6, v5}, Landroid/provider/FontsContract;->equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_99

    return-object v1

    :cond_99
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    :cond_9c
    return-object v9
.end method

.method static synthetic lambda$-android_provider_FontsContract_13824(Landroid/provider/FontRequest;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V
    .registers 13

    :try_start_0
    sget-object v3, Landroid/provider/FontsContract;->sContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4, p0}, Landroid/provider/FontsContract;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;)Landroid/provider/FontsContract$FontFamilyResult;

    move-result-object v1

    invoke-virtual {v1}, Landroid/provider/FontsContract$FontFamilyResult;->getStatusCode()I

    move-result v3

    if-nez v3, :cond_22

    sget-object v3, Landroid/provider/FontsContract;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/provider/FontsContract$FontFamilyResult;->getFonts()[Landroid/provider/FontsContract$FontInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Landroid/provider/FontsContract;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/provider/FontsContract$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_1f

    sget-object v3, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v3, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_22} :catch_3b

    :cond_22
    :goto_22
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_25
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_32

    const/4 v3, 0x0

    invoke-virtual {p5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {p6}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_36

    :cond_32
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_36
    move-exception v3

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    :catch_3b
    move-exception v0

    goto :goto_22
.end method

.method static synthetic lambda$-android_provider_FontsContract_20860(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_20965(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;Landroid/os/Handler;Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 16

    const/4 v10, 0x1

    const/4 v7, 0x0

    :try_start_2
    invoke-static {p0, p1, p2}, Landroid/provider/FontsContract;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;)Landroid/provider/FontsContract$FontFamilyResult;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_5} :catch_1d

    move-result-object v4

    sget-object v8, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_27

    new-instance v8, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$1;

    invoke-direct {v8, v7, p4, v0}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_1d
    move-exception v1

    new-instance v8, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;

    invoke-direct {v8, v7, p4}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p3, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_27
    invoke-virtual {v4}, Landroid/provider/FontsContract$FontFamilyResult;->getStatusCode()I

    move-result v8

    if-eqz v8, :cond_51

    invoke-virtual {v4}, Landroid/provider/FontsContract$FontFamilyResult;->getStatusCode()I

    move-result v7

    packed-switch v7, :pswitch_data_ae

    new-instance v7, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;

    const/4 v8, 0x3

    invoke-direct {v7, v8, p4}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_3e
    new-instance v7, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;

    invoke-direct {v7, v10, p4}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_47
    new-instance v7, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;

    const/4 v8, 0x2

    invoke-direct {v7, v8, p4}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_51
    invoke-virtual {v4}, Landroid/provider/FontsContract$FontFamilyResult;->getFonts()[Landroid/provider/FontsContract$FontInfo;

    move-result-object v3

    if-eqz v3, :cond_5a

    array-length v8, v3

    if-nez v8, :cond_64

    :cond_5a
    new-instance v7, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;

    const/4 v8, 0x4

    invoke-direct {v7, v8, p4}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_64
    array-length v8, v3

    :goto_65
    if-ge v7, v8, :cond_8b

    aget-object v2, v3, v7

    invoke-virtual {v2}, Landroid/provider/FontsContract$FontInfo;->getResultCode()I

    move-result v9

    if-eqz v9, :cond_88

    invoke-virtual {v2}, Landroid/provider/FontsContract$FontInfo;->getResultCode()I

    move-result v5

    if-gez v5, :cond_7f

    new-instance v7, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;

    const/4 v8, 0x5

    invoke-direct {v7, v8, p4}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_7e
    return-void

    :cond_7f
    new-instance v7, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$4;

    invoke-direct {v7, v5, p4}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7e

    :cond_88
    add-int/lit8 v7, v7, 0x1

    goto :goto_65

    :cond_8b
    invoke-static {p0, p1, v3}, Landroid/provider/FontsContract;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/provider/FontsContract$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v6

    if-nez v6, :cond_9b

    new-instance v7, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;

    const/4 v8, 0x6

    invoke-direct {v7, v8, p4}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_9b
    sget-object v7, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$1;

    invoke-direct {v7, v10, p4, v6}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_47
    .end packed-switch
.end method

.method static synthetic lambda$-android_provider_FontsContract_21192(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_21625(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_21964(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_22246(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_22572(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_22911(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_23564(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_23765(Landroid/provider/FontsContract$FontRequestCallback;I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_24251(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_24509(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_31229([B[B)I
    .registers 5

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_8

    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1

    :cond_8
    const/4 v0, 0x0

    :goto_9
    array-length v1, p0

    if-ge v0, v1, :cond_1b

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_18

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    sub-int/2addr v1, v2

    return v1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1b
    const/4 v1, 0x0

    return v1
.end method

.method private static prepareFontData(Landroid/content/Context;[Landroid/provider/FontsContract$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroid/provider/FontsContract$FontInfo;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v19, v3

    :goto_11
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b8

    aget-object v12, p1, v19

    invoke-virtual {v12}, Landroid/provider/FontsContract$FontInfo;->getResultCode()I

    move-result v3

    if-eqz v3, :cond_24

    :cond_1f
    :goto_1f
    add-int/lit8 v3, v19, 0x1

    move/from16 v19, v3

    goto :goto_11

    :cond_24
    invoke-virtual {v12}, Landroid/provider/FontsContract$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const/4 v8, 0x0

    const/16 v18, 0x0

    const/4 v14, 0x0

    :try_start_34
    const-string/jumbo v3, "r"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v3, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_3e} :catch_95
    .catchall {:try_start_34 .. :try_end_3e} :catchall_a6

    move-result-object v14

    if-eqz v14, :cond_67

    const/16 v17, 0x0

    const/4 v10, 0x0

    :try_start_44
    new-instance v11, Ljava/io/FileInputStream;

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_4d} :catch_78
    .catchall {:try_start_44 .. :try_end_4d} :catchall_bd

    :try_start_4d
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_5c} :catch_c6
    .catchall {:try_start_4d .. :try_end_5c} :catchall_c1

    move-result-object v8

    if-eqz v11, :cond_62

    :try_start_5f
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_62} :catch_76
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_65
    .catchall {:try_start_5f .. :try_end_62} :catchall_a6

    :cond_62
    :goto_62
    if-eqz v17, :cond_67

    :try_start_64
    throw v17
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_65} :catch_65
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_65} :catch_95
    .catchall {:try_start_64 .. :try_end_65} :catchall_a6

    :catch_65
    move-exception v9

    move-object v10, v11

    :cond_67
    :goto_67
    if-eqz v14, :cond_6c

    :try_start_69
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6c} :catch_aa
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6f

    :cond_6c
    :goto_6c
    if-eqz v18, :cond_70

    :try_start_6e
    throw v18
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_6f} :catch_6f

    :catch_6f
    move-exception v9

    :cond_70
    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :catch_76
    move-exception v17

    goto :goto_62

    :catch_78
    move-exception v3

    :goto_79
    :try_start_79
    throw v3
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception v4

    move-object/from16 v21, v4

    move-object v4, v3

    move-object/from16 v3, v21

    :goto_80
    if-eqz v10, :cond_85

    :try_start_82
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_85} :catch_8a
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_88
    .catchall {:try_start_82 .. :try_end_85} :catchall_a6

    :cond_85
    :goto_85
    if-eqz v4, :cond_a5

    :try_start_87
    throw v4

    :catch_88
    move-exception v9

    goto :goto_67

    :catch_8a
    move-exception v5

    if-nez v4, :cond_8f

    move-object v4, v5

    goto :goto_85

    :cond_8f
    if-eq v4, v5, :cond_85

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_94} :catch_88
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_94} :catch_95
    .catchall {:try_start_87 .. :try_end_94} :catchall_a6

    goto :goto_85

    :catch_95
    move-exception v3

    :try_start_96
    throw v3
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_97

    :catchall_97
    move-exception v4

    move-object/from16 v21, v4

    move-object v4, v3

    move-object/from16 v3, v21

    :goto_9d
    if-eqz v14, :cond_a2

    :try_start_9f
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a2} :catch_ac
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_6f

    :cond_a2
    :goto_a2
    if-eqz v4, :cond_b7

    :try_start_a4
    throw v4
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a5} :catch_6f

    :cond_a5
    :try_start_a5
    throw v3
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a6} :catch_88
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_a6} :catch_95
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a6

    :catchall_a6
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_9d

    :catch_aa
    move-exception v18

    goto :goto_6c

    :catch_ac
    move-exception v5

    if-nez v4, :cond_b1

    move-object v4, v5

    goto :goto_a2

    :cond_b1
    if-eq v4, v5, :cond_a2

    :try_start_b3
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a2

    :cond_b7
    throw v3
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b8} :catch_6f

    :cond_b8
    invoke-static {v13}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    return-object v3

    :catchall_bd
    move-exception v3

    move-object/from16 v4, v17

    goto :goto_80

    :catchall_c1
    move-exception v3

    move-object v10, v11

    move-object/from16 v4, v17

    goto :goto_80

    :catch_c6
    move-exception v3

    move-object v10, v11

    goto :goto_79
.end method

.method public static requestFonts(Landroid/content/Context;Landroid/provider/FontRequest;Landroid/os/Handler;Landroid/os/CancellationSignal;Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 12

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    sget-object v0, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Typeface;

    if-eqz v6, :cond_1d

    new-instance v0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$1;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p4, v6}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1d
    new-instance v0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static setApplicationContextForResources(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Landroid/provider/FontsContract;->sContext:Landroid/content/Context;

    return-void
.end method
