.class public Lcom/android/server/pm/ShortcutDumpFiles;
.super Ljava/lang/Object;
.source "ShortcutDumpFiles.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field private final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    return-void
.end method

.method static synthetic lambda$-com_android_server_pm_ShortcutDumpFiles_2368([BLjava/io/PrintWriter;)V
    .registers 4

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_pm_ShortcutDumpFiles_2649(Ljava/io/File;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_server_pm_ShortcutDumpFiles_2877(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .registers 15

    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v7}, Lcom/android/server/pm/ShortcutService;->getDumpPath()Ljava/io/File;

    move-result-object v0

    sget-object v7, Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo;->$INST$0:Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo;

    invoke-virtual {v0, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    :cond_18
    const-string/jumbo v7, "  No dump files found."

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_1f
    sget-object v7, Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo$1;->$INST$0:Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo$1;

    invoke-static {v7}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v2, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v7, 0x0

    array-length v9, v2

    :goto_2a
    if-ge v7, v9, :cond_81

    aget-object v4, v2, v7

    const-string/jumbo v8, "*** Dumping: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v8, "mtime: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4c} :catch_77
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4c} :catch_77

    const/4 v8, 0x0

    const/4 v5, 0x0

    :try_start_4e
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_5d} :catch_a0
    .catchall {:try_start_4e .. :try_end_5d} :catchall_9b

    const/4 v3, 0x0

    :goto_5e
    :try_start_5e
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_82

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_67} :catch_68
    .catchall {:try_start_5e .. :try_end_67} :catchall_9d

    goto :goto_5e

    :catch_68
    move-exception v7

    move-object v5, v6

    :goto_6a
    :try_start_6a
    throw v7
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception v8

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    :goto_6f
    if-eqz v5, :cond_74

    :try_start_71
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_74} :catch_8c
    .catch Ljava/lang/RuntimeException; {:try_start_71 .. :try_end_74} :catch_77
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_77

    :cond_74
    :goto_74
    if-eqz v8, :cond_97

    :try_start_76
    throw v8
    :try_end_77
    .catch Ljava/lang/RuntimeException; {:try_start_76 .. :try_end_77} :catch_77
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_77} :catch_77

    :catch_77
    move-exception v1

    const-string/jumbo v7, "ShortcutService"

    const-string/jumbo v8, "Failed to print dump files"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_81
    return-void

    :cond_82
    if-eqz v6, :cond_87

    :try_start_84
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_87} :catch_8a
    .catch Ljava/lang/RuntimeException; {:try_start_84 .. :try_end_87} :catch_77
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_77

    :cond_87
    :goto_87
    if-eqz v8, :cond_98

    :try_start_89
    throw v8

    :catch_8a
    move-exception v8

    goto :goto_87

    :catch_8c
    move-exception v9

    if-nez v8, :cond_91

    move-object v8, v9

    goto :goto_74

    :cond_91
    if-eq v8, v9, :cond_74

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_74

    :cond_97
    throw v7
    :try_end_98
    .catch Ljava/lang/RuntimeException; {:try_start_89 .. :try_end_98} :catch_77
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_98} :catch_77

    :cond_98
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :catchall_9b
    move-exception v7

    goto :goto_6f

    :catchall_9d
    move-exception v7

    move-object v5, v6

    goto :goto_6f

    :catch_a0
    move-exception v7

    goto :goto_6a
.end method

.method public save(Ljava/lang/String;Ljava/util/function/Consumer;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/io/PrintWriter;",
            ">;)Z"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutService;->getDumpPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2c

    const-string/jumbo v5, "ShortcutService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to create directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_2c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_31} :catch_4c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_31} :catch_4c

    const/4 v3, 0x0

    :try_start_32
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_41} :catch_6a
    .catchall {:try_start_32 .. :try_end_41} :catchall_86

    :try_start_41
    invoke-interface {p2, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_44} :catch_8b
    .catchall {:try_start_41 .. :try_end_44} :catchall_88

    if-eqz v4, :cond_49

    :try_start_46
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_49} :catch_68
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_49} :catch_4c
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4c

    :cond_49
    :goto_49
    if-eqz v6, :cond_84

    :try_start_4b
    throw v6
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4c} :catch_4c
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4c} :catch_4c

    :catch_4c
    move-exception v1

    const-string/jumbo v5, "ShortcutService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to create dump file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v8

    :catch_68
    move-exception v6

    goto :goto_49

    :catch_6a
    move-exception v5

    :goto_6b
    :try_start_6b
    throw v5
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_70
    if-eqz v3, :cond_75

    :try_start_72
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_75} :catch_78
    .catch Ljava/lang/RuntimeException; {:try_start_72 .. :try_end_75} :catch_4c
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_4c

    :cond_75
    :goto_75
    if-eqz v6, :cond_83

    :try_start_77
    throw v6

    :catch_78
    move-exception v7

    if-nez v6, :cond_7d

    move-object v6, v7

    goto :goto_75

    :cond_7d
    if-eq v6, v7, :cond_75

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_75

    :cond_83
    throw v5
    :try_end_84
    .catch Ljava/lang/RuntimeException; {:try_start_77 .. :try_end_84} :catch_4c
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_84} :catch_4c

    :cond_84
    const/4 v5, 0x1

    return v5

    :catchall_86
    move-exception v5

    goto :goto_70

    :catchall_88
    move-exception v5

    move-object v3, v4

    goto :goto_70

    :catch_8b
    move-exception v5

    move-object v3, v4

    goto :goto_6b
.end method

.method public save(Ljava/lang/String;[B)Z
    .registers 5

    new-instance v0, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method
