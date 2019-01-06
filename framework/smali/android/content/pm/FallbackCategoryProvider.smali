.class public Landroid/content/pm/FallbackCategoryProvider;
.super Ljava/lang/Object;
.source "FallbackCategoryProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FallbackCategoryProvider"

.field private static final sFallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/content/pm/FallbackCategoryProvider;->sFallbacks:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFallbackCategory(Ljava/lang/String;)I
    .registers 3

    sget-object v0, Landroid/content/pm/FallbackCategoryProvider;->sFallbacks:Landroid/util/ArrayMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static loadFallbacks()V
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x0

    sget-object v7, Landroid/content/pm/FallbackCategoryProvider;->sFallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    const-string/jumbo v7, "fw.ignore_fb_categories"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1a

    const-string/jumbo v7, "FallbackCategoryProvider"

    const-string/jumbo v8, "Ignoring fallback categories"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    const-string/jumbo v7, "/system/framework/framework-res.apk"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    new-instance v5, Landroid/content/res/Resources;

    invoke-direct {v5, v0, v8, v8}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const/4 v3, 0x0

    :try_start_2b
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const v9, 0x1100004

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_3c} :catch_cb
    .catchall {:try_start_2b .. :try_end_3c} :catchall_c6

    :cond_3c
    :goto_3c
    :try_start_3c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_84

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x23

    if-eq v7, v9, :cond_3c

    const-string/jumbo v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v9, 0x2

    if-ne v7, v9, :cond_3c

    sget-object v7, Landroid/content/pm/FallbackCategoryProvider;->sFallbacks:Landroid/util/ArrayMap;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_69} :catch_6a
    .catchall {:try_start_3c .. :try_end_69} :catchall_c8

    goto :goto_3c

    :catch_6a
    move-exception v7

    move-object v3, v4

    :goto_6c
    :try_start_6c
    throw v7
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_71
    if-eqz v3, :cond_76

    :try_start_73
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_76} :catch_ba
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_79
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_76} :catch_79

    :cond_76
    :goto_76
    if-eqz v8, :cond_c5

    :try_start_78
    throw v8
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_79} :catch_79
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_79} :catch_79

    :catch_79
    move-exception v1

    :goto_7a
    const-string/jumbo v7, "FallbackCategoryProvider"

    const-string/jumbo v8, "Failed to read fallback categories"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_83
    return-void

    :cond_84
    :try_start_84
    const-string/jumbo v7, "FallbackCategoryProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Found "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/content/pm/FallbackCategoryProvider;->sFallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " fallback categories"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_ab} :catch_6a
    .catchall {:try_start_84 .. :try_end_ab} :catchall_c8

    if-eqz v4, :cond_b0

    :try_start_ad
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_b0} :catch_b6
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b3
    .catch Ljava/lang/NumberFormatException; {:try_start_ad .. :try_end_b0} :catch_b3

    :cond_b0
    :goto_b0
    if-eqz v8, :cond_b8

    :try_start_b2
    throw v8
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b3} :catch_b3
    .catch Ljava/lang/NumberFormatException; {:try_start_b2 .. :try_end_b3} :catch_b3

    :catch_b3
    move-exception v1

    move-object v3, v4

    goto :goto_7a

    :catch_b6
    move-exception v8

    goto :goto_b0

    :cond_b8
    move-object v3, v4

    goto :goto_83

    :catch_ba
    move-exception v9

    if-nez v8, :cond_bf

    move-object v8, v9

    goto :goto_76

    :cond_bf
    if-eq v8, v9, :cond_76

    :try_start_c1
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_76

    :cond_c5
    throw v7
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c6} :catch_79
    .catch Ljava/lang/NumberFormatException; {:try_start_c1 .. :try_end_c6} :catch_79

    :catchall_c6
    move-exception v7

    goto :goto_71

    :catchall_c8
    move-exception v7

    move-object v3, v4

    goto :goto_71

    :catch_cb
    move-exception v7

    goto :goto_6c
.end method
