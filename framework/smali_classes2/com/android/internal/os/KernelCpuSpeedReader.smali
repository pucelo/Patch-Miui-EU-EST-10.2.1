.class public Lcom/android/internal/os/KernelCpuSpeedReader;
.super Ljava/lang/Object;
.source "KernelCpuSpeedReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KernelCpuSpeedReader"


# instance fields
.field private final mDeltaSpeedTimesMs:[J

.field private final mJiffyMillis:J

.field private final mLastSpeedTimesMs:[J

.field private final mProcFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v2, "/sys/devices/system/cpu/cpu%d/cpufreq/stats/time_in_state"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFile:Ljava/lang/String;

    new-array v2, p2, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    new-array v2, p2, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-interface {v2, v3}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mJiffyMillis:J

    return-void
.end method


# virtual methods
.method public readDelta()[J
    .registers 20

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    const/4 v12, 0x0

    const/4 v5, 0x0

    :try_start_6
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFile:Ljava/lang/String;

    invoke-direct {v9, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_14} :catch_d3
    .catchall {:try_start_6 .. :try_end_14} :catchall_ce

    :try_start_14
    new-instance v8, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v9, 0x20

    invoke-direct {v8, v9}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    const/4 v7, 0x0

    :goto_1c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    array-length v9, v9

    if-ge v7, v9, :cond_a8

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a8

    invoke-virtual {v8, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mJiffyMillis:J

    move-wide/from16 v16, v0

    mul-long v10, v14, v16

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    aget-wide v14, v9, v7

    cmp-long v9, v10, v14

    if-gez v9, :cond_58

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    aput-wide v10, v9, v7

    :goto_4f
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    aput-wide v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_58
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    aget-wide v14, v13, v7

    sub-long v14, v10, v14

    aput-wide v14, v9, v7
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_66} :catch_67
    .catchall {:try_start_14 .. :try_end_66} :catchall_d0

    goto :goto_4f

    :catch_67
    move-exception v9

    move-object v5, v6

    :goto_69
    :try_start_69
    throw v9
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    :catchall_6a
    move-exception v12

    move-object/from16 v18, v12

    move-object v12, v9

    move-object/from16 v9, v18

    :goto_70
    if-eqz v5, :cond_75

    :try_start_72
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_75} :catch_b5
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_78
    .catchall {:try_start_72 .. :try_end_75} :catchall_c0

    :cond_75
    :goto_75
    if-eqz v12, :cond_c5

    :try_start_77
    throw v12
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_78} :catch_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_c0

    :catch_78
    move-exception v2

    :goto_79
    :try_start_79
    const-string/jumbo v9, "KernelCpuSpeedReader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to read cpu-freq: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    const-wide/16 v12, 0x0

    invoke-static {v9, v12, v13}, Ljava/util/Arrays;->fill([JJ)V
    :try_end_a0
    .catchall {:try_start_79 .. :try_end_a0} :catchall_c0

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :goto_a3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    return-object v9

    :cond_a8
    if-eqz v6, :cond_ad

    :try_start_aa
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_aa .. :try_end_ad} :catch_b3
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_b0
    .catchall {:try_start_aa .. :try_end_ad} :catchall_cb

    :cond_ad
    :goto_ad
    if-eqz v12, :cond_c6

    :try_start_af
    throw v12
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b0} :catch_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_cb

    :catch_b0
    move-exception v2

    move-object v5, v6

    goto :goto_79

    :catch_b3
    move-exception v12

    goto :goto_ad

    :catch_b5
    move-exception v13

    if-nez v12, :cond_ba

    move-object v12, v13

    goto :goto_75

    :cond_ba
    if-eq v12, v13, :cond_75

    :try_start_bc
    invoke-virtual {v12, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_78
    .catchall {:try_start_bc .. :try_end_bf} :catchall_c0

    goto :goto_75

    :catchall_c0
    move-exception v9

    :goto_c1
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v9

    :cond_c5
    :try_start_c5
    throw v9
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c6} :catch_78
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c0

    :cond_c6
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v5, v6

    goto :goto_a3

    :catchall_cb
    move-exception v9

    move-object v5, v6

    goto :goto_c1

    :catchall_ce
    move-exception v9

    goto :goto_70

    :catchall_d0
    move-exception v9

    move-object v5, v6

    goto :goto_70

    :catch_d3
    move-exception v9

    goto :goto_69
.end method
