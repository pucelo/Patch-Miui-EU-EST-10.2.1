.class public Lcom/android/internal/os/KernelMemoryBandwidthStats;
.super Ljava/lang/Object;
.source "KernelMemoryBandwidthStats.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KernelMemoryBandwidthStats"

.field private static final mSysfsFile:Ljava/lang/String; = "/sys/kernel/memory_state_time/show_stat"


# instance fields
.field protected final mBandwidthEntries:Landroid/util/LongSparseLongArray;

.field private mStatsDoNotExist:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mStatsDoNotExist:Z

    return-void
.end method


# virtual methods
.method public getBandwidthEntries()Landroid/util/LongSparseLongArray;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method public parseStats(Ljava/io/BufferedReader;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v12, 0xf4240

    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iget-object v4, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v4}, Landroid/util/LongSparseLongArray;->clear()V

    :cond_f
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_54

    invoke-virtual {v3, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1c
    iget-object v4, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_44

    iget-object v4, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    int-to-long v6, v0

    iget-object v5, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v5, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v8

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/util/LongSparseLongArray;->put(JJ)V

    :goto_3b
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_1c

    :cond_44
    iget-object v4, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    int-to-long v6, v0

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    div-long/2addr v8, v12

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/util/LongSparseLongArray;->put(JJ)V

    goto :goto_3b

    :cond_54
    return-void
.end method

.method public updateStats()V
    .registers 14

    const/4 v10, 0x0

    iget-boolean v7, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mStatsDoNotExist:Z

    if-eqz v7, :cond_6

    return-void

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_f
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string/jumbo v11, "/sys/kernel/memory_state_time/show_stat"

    invoke-direct {v7, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1c} :catch_6d
    .catchall {:try_start_f .. :try_end_1c} :catchall_c1

    :try_start_1c
    invoke-virtual {p0, v6}, Lcom/android/internal/os/KernelMemoryBandwidthStats;->parseStats(Ljava/io/BufferedReader;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1f} :catch_c6
    .catchall {:try_start_1c .. :try_end_1f} :catchall_c3

    if-eqz v6, :cond_24

    :try_start_21
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_24} :catch_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_24} :catch_27
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_be
    .catchall {:try_start_21 .. :try_end_24} :catchall_bb

    :cond_24
    :goto_24
    if-eqz v10, :cond_b6

    :try_start_26
    throw v10
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_27} :catch_27
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_27} :catch_be
    .catchall {:try_start_26 .. :try_end_27} :catchall_bb

    :catch_27
    move-exception v0

    move-object v3, v6

    :goto_29
    :try_start_29
    const-string/jumbo v7, "KernelMemoryBandwidthStats"

    const-string/jumbo v10, "No kernel memory bandwidth stats available"

    invoke-static {v7, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v7}, Landroid/util/LongSparseLongArray;->clear()V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mStatsDoNotExist:Z
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_b1

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :goto_3d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v8

    const-wide/16 v10, 0x64

    cmp-long v7, v4, v10

    if-lez v7, :cond_6a

    const-string/jumbo v7, "KernelMemoryBandwidthStats"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Reading memory bandwidth file took "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    return-void

    :catch_6b
    move-exception v10

    goto :goto_24

    :catch_6d
    move-exception v7

    :goto_6e
    :try_start_6e
    throw v7
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6f

    :catchall_6f
    move-exception v10

    move-object v12, v10

    move-object v10, v7

    move-object v7, v12

    :goto_73
    if-eqz v3, :cond_78

    :try_start_75
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_78} :catch_7d
    .catch Ljava/io/FileNotFoundException; {:try_start_75 .. :try_end_78} :catch_7b
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_88
    .catchall {:try_start_75 .. :try_end_78} :catchall_b1

    :cond_78
    :goto_78
    if-eqz v10, :cond_b0

    :try_start_7a
    throw v10

    :catch_7b
    move-exception v0

    goto :goto_29

    :catch_7d
    move-exception v11

    if-nez v10, :cond_82

    move-object v10, v11

    goto :goto_78

    :cond_82
    if-eq v10, v11, :cond_78

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_87
    .catch Ljava/io/FileNotFoundException; {:try_start_7a .. :try_end_87} :catch_7b
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_87} :catch_88
    .catchall {:try_start_7a .. :try_end_87} :catchall_b1

    goto :goto_78

    :catch_88
    move-exception v1

    :goto_89
    :try_start_89
    const-string/jumbo v7, "KernelMemoryBandwidthStats"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to read memory bandwidth: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v7}, Landroid/util/LongSparseLongArray;->clear()V
    :try_end_ac
    .catchall {:try_start_89 .. :try_end_ac} :catchall_b1

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_3d

    :cond_b0
    :try_start_b0
    throw v7
    :try_end_b1
    .catch Ljava/io/FileNotFoundException; {:try_start_b0 .. :try_end_b1} :catch_7b
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b1} :catch_88
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_b1

    :catchall_b1
    move-exception v7

    :goto_b2
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v7

    :cond_b6
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v3, v6

    goto :goto_3d

    :catchall_bb
    move-exception v7

    move-object v3, v6

    goto :goto_b2

    :catch_be
    move-exception v1

    move-object v3, v6

    goto :goto_89

    :catchall_c1
    move-exception v7

    goto :goto_73

    :catchall_c3
    move-exception v7

    move-object v3, v6

    goto :goto_73

    :catch_c6
    move-exception v7

    move-object v3, v6

    goto :goto_6e
.end method
