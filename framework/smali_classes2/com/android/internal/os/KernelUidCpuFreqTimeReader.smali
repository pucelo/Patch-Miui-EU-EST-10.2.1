.class public Lcom/android/internal/os/KernelUidCpuFreqTimeReader;
.super Ljava/lang/Object;
.source "KernelUidCpuFreqTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KernelUidCpuFreqTimeReader"

.field private static final TOTAL_READ_ERROR_COUNT:I = 0x5

.field private static final UID_TIMES_PROC_FILE:Ljava/lang/String; = "/proc/uid_time_in_state"


# instance fields
.field private mCpuFreqs:[J

.field private mCpuFreqsCount:I

.field private mLastTimeReadMs:J

.field private mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[J>;"
        }
    .end annotation
.end field

.field private mNowTimeMs:J

.field private mProcFileAvailable:Z

.field private mReadErrorCounter:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    return-void
.end method

.method private readCpuFreqs(Ljava/lang/String;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .registers 9

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    if-nez v2, :cond_2c

    const-string/jumbo v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    iget v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    const/4 v1, 0x0

    :goto_17
    iget v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2c
    if-eqz p2, :cond_33

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    invoke-interface {p2, v2}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;->onCpuFreqs([J)V

    :cond_33
    return-void
.end method

.method private readTimesForUid(ILjava/lang/String;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [J

    if-nez v10, :cond_1d

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    new-array v10, v11, [J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v11, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1d
    const-string/jumbo v11, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v6, v7

    array-length v11, v10

    if-eq v6, v11, :cond_51

    const-string/jumbo v11, "KernelUidCpuFreqTimeReader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "No. of readings don\'t match cpu freqs, readings: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " cpuFreqsCount: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_51
    new-array v3, v6, [J

    new-array v2, v6, [J

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_57
    if-ge v4, v6, :cond_8c

    aget-object v11, v7, v4

    const/16 v12, 0xa

    invoke-static {v11, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    const-wide/16 v14, 0xa

    mul-long v8, v12, v14

    aget-wide v12, v10, v4

    sub-long v12, v8, v12

    aput-wide v12, v3, v4

    aget-wide v12, v3, v4

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-ltz v11, :cond_79

    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-gez v11, :cond_7a

    :cond_79
    return-void

    :cond_7a
    aput-wide v8, v2, v4

    if-nez v5, :cond_86

    aget-wide v12, v3, v4

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_8a

    :cond_86
    const/4 v5, 0x1

    :goto_87
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    :cond_8a
    const/4 v5, 0x0

    goto :goto_87

    :cond_8c
    if-eqz v5, :cond_9c

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v2, v11, v10, v12, v6}, Ljava/lang/System;->arraycopy([JI[JII)V

    if-eqz p3, :cond_9c

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-interface {v0, v1, v3}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;->onUidCpuFreqTime(I[J)V

    :cond_9c
    return-void
.end method


# virtual methods
.method public readDelta(Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .registers 11

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mProcFileAvailable:Z

    if-nez v3, :cond_b

    iget v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mReadErrorCounter:I

    const/4 v5, 0x5

    if-lt v3, v5, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x0

    :try_start_c
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string/jumbo v5, "/proc/uid_time_in_state"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_19} :catch_58
    .catchall {:try_start_c .. :try_end_19} :catchall_74

    :try_start_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mNowTimeMs:J

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readDelta(Ljava/io/BufferedReader;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    iget-wide v6, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mNowTimeMs:J

    iput-wide v6, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastTimeReadMs:J

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mProcFileAvailable:Z
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_29} :catch_79
    .catchall {:try_start_19 .. :try_end_29} :catchall_76

    if-eqz v2, :cond_2e

    :try_start_2b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_54
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_31

    :cond_2e
    :goto_2e
    if-eqz v4, :cond_56

    :try_start_30
    throw v4
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_31} :catch_31

    :catch_31
    move-exception v0

    move-object v1, v2

    :goto_33
    iget v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mReadErrorCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mReadErrorCounter:I

    const-string/jumbo v3, "KernelUidCpuFreqTimeReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to read /proc/uid_time_in_state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_53
    return-void

    :catch_54
    move-exception v4

    goto :goto_2e

    :cond_56
    move-object v1, v2

    goto :goto_53

    :catch_58
    move-exception v3

    :goto_59
    :try_start_59
    throw v3
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception v4

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    :goto_5e
    if-eqz v1, :cond_63

    :try_start_60
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_63} :catch_68
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_66

    :cond_63
    :goto_63
    if-eqz v4, :cond_73

    :try_start_65
    throw v4

    :catch_66
    move-exception v0

    goto :goto_33

    :catch_68
    move-exception v5

    if-nez v4, :cond_6d

    move-object v4, v5

    goto :goto_63

    :cond_6d
    if-eq v4, v5, :cond_63

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_63

    :cond_73
    throw v3
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_74} :catch_66

    :catchall_74
    move-exception v3

    goto :goto_5e

    :catchall_76
    move-exception v3

    move-object v1, v2

    goto :goto_5e

    :catch_79
    move-exception v3

    move-object v1, v2

    goto :goto_59
.end method

.method public readDelta(Ljava/io/BufferedReader;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, v1, p2}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readCpuFreqs(Ljava/lang/String;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    :goto_a
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readTimesForUid(ILjava/lang/String;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    goto :goto_a

    :cond_31
    return-void
.end method

.method public removeUid(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public removeUidsInRange(II)V
    .registers 7

    const/4 v3, 0x0

    if-ge p2, p1, :cond_4

    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->removeAtRange(II)V

    return-void
.end method
