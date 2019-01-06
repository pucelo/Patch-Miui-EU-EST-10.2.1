.class public Lcom/android/internal/os/KernelUidCpuTimeReader;
.super Ljava/lang/Object;
.source "KernelUidCpuTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KernelUidCpuTimeReader"

.field private static final sProcFile:Ljava/lang/String; = "/proc/uid_cputime/show_uid_stat"

.field private static final sRemoveUidProcFile:Ljava/lang/String; = "/proc/uid_cputime/remove_uid_range"


# instance fields
.field private mLastSystemTimeUs:Landroid/util/SparseLongArray;

.field private mLastTimeReadUs:J

.field private mLastUserTimeUs:Landroid/util/SparseLongArray;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    return-void
.end method

.method private removeUidsFromKernelModule(II)V
    .registers 11

    const/4 v4, 0x0

    const-string/jumbo v3, "KernelUidCpuTimeReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Removing uids "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_27
    new-instance v2, Ljava/io/FileWriter;

    const-string/jumbo v3, "/proc/uid_cputime/remove_uid_range"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2f} :catch_88
    .catchall {:try_start_27 .. :try_end_2f} :catchall_a4

    :try_start_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_4d} :catch_a9
    .catchall {:try_start_2f .. :try_end_4d} :catchall_a6

    if-eqz v2, :cond_52

    :try_start_4f
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_84
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_55

    :cond_52
    :goto_52
    if-eqz v4, :cond_86

    :try_start_54
    throw v4
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_55} :catch_55

    :catch_55
    move-exception v0

    move-object v1, v2

    :goto_57
    const-string/jumbo v3, "KernelUidCpuTimeReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "failed to remove uids "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from uid_cputime module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_83
    return-void

    :catch_84
    move-exception v4

    goto :goto_52

    :cond_86
    move-object v1, v2

    goto :goto_83

    :catch_88
    move-exception v3

    :goto_89
    :try_start_89
    throw v3
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_8e
    if-eqz v1, :cond_93

    :try_start_90
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_93} :catch_98
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_96

    :cond_93
    :goto_93
    if-eqz v4, :cond_a3

    :try_start_95
    throw v4

    :catch_96
    move-exception v0

    goto :goto_57

    :catch_98
    move-exception v5

    if-nez v4, :cond_9d

    move-object v4, v5

    goto :goto_93

    :cond_9d
    if-eq v4, v5, :cond_93

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_93

    :cond_a3
    throw v3
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_a4} :catch_96

    :catchall_a4
    move-exception v3

    goto :goto_8e

    :catchall_a6
    move-exception v3

    move-object v1, v2

    goto :goto_8e

    :catch_a9
    move-exception v3

    move-object v1, v2

    goto :goto_89
.end method


# virtual methods
.method public readDelta(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V
    .registers 33

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    mul-long v12, v24, v26

    const/16 v24, 0x0

    const/4 v11, 0x0

    :try_start_b
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string/jumbo v25, "/proc/uid_cputime/show_uid_stat"

    move-object/from16 v0, v25

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1a} :catch_1cb
    .catchall {:try_start_b .. :try_end_1a} :catchall_1c6

    :try_start_1a
    new-instance v16, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x20

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    :goto_23
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1a6

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-static {v2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-static {v2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v22

    invoke-virtual/range {v16 .. v16}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-static {v2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v18

    if-eqz p1, :cond_15a

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v2, v26, v28

    if-eqz v2, :cond_15a

    move-wide/from16 v4, v22

    move-wide/from16 v6, v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v9

    if-ltz v9, :cond_149

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v26

    sub-long v4, v22, v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v26

    sub-long v6, v18, v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    move-wide/from16 v26, v0

    sub-long v20, v12, v26

    const-wide/16 v26, 0x0

    cmp-long v2, v4, v26

    if-ltz v2, :cond_a6

    const-wide/16 v26, 0x0

    cmp-long v2, v6, v26

    if-gez v2, :cond_149

    :cond_a6
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Malformed cpu data for UID="

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v25, "!\n"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Time between reads: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v26, 0x3e8

    div-long v26, v20, v26

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v2, "\n"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Previous times: u="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v2, " s="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v2, "\nCurrent times: u="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v26, 0x3e8

    div-long v26, v22, v26

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v2, " s="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v26, 0x3e8

    div-long v26, v18, v26

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v2, "\nDelta: u="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v26, 0x3e8

    div-long v26, v4, v26

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v2, " s="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v26, 0x3e8

    div-long v26, v6, v26

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v2, "KernelUidCpuTimeReader"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    :cond_149
    const-wide/16 v26, 0x0

    cmp-long v2, v4, v26

    if-nez v2, :cond_155

    const-wide/16 v26, 0x0

    cmp-long v2, v6, v26

    if-eqz v2, :cond_15a

    :cond_155
    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;->onUidCpuTime(IJJ)V

    :cond_15a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    move-wide/from16 v0, v22

    invoke-virtual {v2, v3, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    move-wide/from16 v0, v18

    invoke-virtual {v2, v3, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_16c
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_16c} :catch_16e
    .catchall {:try_start_1a .. :try_end_16c} :catchall_1c8

    goto/16 :goto_23

    :catch_16e
    move-exception v2

    move-object v11, v14

    :goto_170
    :try_start_170
    throw v2
    :try_end_171
    .catchall {:try_start_170 .. :try_end_171} :catchall_171

    :catchall_171
    move-exception v24

    move-object/from16 v30, v24

    move-object/from16 v24, v2

    move-object/from16 v2, v30

    :goto_178
    if-eqz v11, :cond_17d

    :try_start_17a
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_17d
    .catch Ljava/lang/Throwable; {:try_start_17a .. :try_end_17d} :catch_1b5
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_17d} :catch_180

    :cond_17d
    :goto_17d
    if-eqz v24, :cond_1c5

    :try_start_17f
    throw v24
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_180} :catch_180

    :catch_180
    move-exception v8

    :goto_181
    const-string/jumbo v2, "KernelUidCpuTimeReader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Failed to read uid_cputime: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a1
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    return-void

    :cond_1a6
    if-eqz v14, :cond_1ab

    :try_start_1a8
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_1ab
    .catch Ljava/lang/Throwable; {:try_start_1a8 .. :try_end_1ab} :catch_1b1
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_1ab} :catch_1ae

    :cond_1ab
    :goto_1ab
    if-eqz v24, :cond_1b3

    :try_start_1ad
    throw v24
    :try_end_1ae
    .catch Ljava/io/IOException; {:try_start_1ad .. :try_end_1ae} :catch_1ae

    :catch_1ae
    move-exception v8

    move-object v11, v14

    goto :goto_181

    :catch_1b1
    move-exception v24

    goto :goto_1ab

    :cond_1b3
    move-object v11, v14

    goto :goto_1a1

    :catch_1b5
    move-exception v25

    if-nez v24, :cond_1bb

    move-object/from16 v24, v25

    goto :goto_17d

    :cond_1bb
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_17d

    :try_start_1c1
    invoke-virtual/range {v24 .. v25}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_17d

    :cond_1c5
    throw v2
    :try_end_1c6
    .catch Ljava/io/IOException; {:try_start_1c1 .. :try_end_1c6} :catch_180

    :catchall_1c6
    move-exception v2

    goto :goto_178

    :catchall_1c8
    move-exception v2

    move-object v11, v14

    goto :goto_178

    :catch_1cb
    move-exception v2

    goto :goto_170
.end method

.method public removeUid(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_12

    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    :cond_12
    invoke-direct {p0, p1, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUidsFromKernelModule(II)V

    return-void
.end method

.method public removeUidsInRange(II)V
    .registers 9

    const-wide/16 v4, 0x0

    if-ge p2, p1, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p2, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p2, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    sub-int v3, v0, v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseLongArray;->removeAtRange(II)V

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    sub-int v3, v0, v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseLongArray;->removeAtRange(II)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUidsFromKernelModule(II)V

    return-void
.end method
