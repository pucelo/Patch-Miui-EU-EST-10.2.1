.class Lcom/android/server/content/SyncLogger$RotatingFileLogger;
.super Lcom/android/server/content/SyncLogger;
.source "SyncLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RotatingFileLogger"
.end annotation


# static fields
.field private static final DO_LOGCAT:Z

.field private static final sFilenameDateFormat:Ljava/text/SimpleDateFormat;

.field private static final sTimestampFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private final mCachedDate:Ljava/util/Date;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCurrentLogFileDayTimestamp:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mErrorShown:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mKeepAgeMs:J

.field private final mLock:Ljava/lang/Object;

.field private final mLogPath:Ljava/io/File;

.field private mLogWriter:Ljava/io/Writer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mStringBuilder:Ljava/lang/StringBuilder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sTimestampFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sFilenameDateFormat:Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "SyncLogger"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->DO_LOGCAT:Z

    return-void
.end method

.method constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/content/SyncLogger;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mKeepAgeMs:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "syncmanager-log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    return-void
.end method

.method private closeCurrentLogLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    return-void
.end method

.method private dumpFile(Ljava/io/PrintWriter;Ljava/io/File;)V
    .registers 13

    const/4 v6, 0x0

    const-string/jumbo v5, "SyncLogger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Dumping "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x8000

    new-array v0, v5, [C

    const/4 v2, 0x0

    :try_start_21
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2b} :catch_69
    .catchall {:try_start_21 .. :try_end_2b} :catchall_64

    :cond_2b
    :goto_2b
    :try_start_2b
    invoke-virtual {v3, v0}, Ljava/io/Reader;->read([C)I

    move-result v4

    if-ltz v4, :cond_49

    if-lez v4, :cond_2b

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v4}, Ljava/io/PrintWriter;->write([CII)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_37} :catch_38
    .catchall {:try_start_2b .. :try_end_37} :catchall_66

    goto :goto_2b

    :catch_38
    move-exception v5

    move-object v2, v3

    :goto_3a
    :try_start_3a
    throw v5
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_3f
    if-eqz v2, :cond_44

    :try_start_41
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_44} :catch_58
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_47

    :cond_44
    :goto_44
    if-eqz v6, :cond_63

    :try_start_46
    throw v6
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_47} :catch_47

    :catch_47
    move-exception v1

    :goto_48
    return-void

    :cond_49
    if-eqz v3, :cond_4e

    :try_start_4b
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_54
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_51

    :cond_4e
    :goto_4e
    if-eqz v6, :cond_56

    :try_start_50
    throw v6
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_51} :catch_51

    :catch_51
    move-exception v1

    move-object v2, v3

    goto :goto_48

    :catch_54
    move-exception v6

    goto :goto_4e

    :cond_56
    move-object v2, v3

    goto :goto_48

    :catch_58
    move-exception v7

    if-nez v6, :cond_5d

    move-object v6, v7

    goto :goto_44

    :cond_5d
    if-eq v6, v7, :cond_44

    :try_start_5f
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_44

    :cond_63
    throw v5
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_64} :catch_47

    :catchall_64
    move-exception v5

    goto :goto_3f

    :catchall_66
    move-exception v5

    move-object v2, v3

    goto :goto_3f

    :catch_69
    move-exception v5

    goto :goto_3a
.end method

.method private handleException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mErrorShown:Z

    if-nez v0, :cond_d

    const-string/jumbo v0, "SyncLogger"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mErrorShown:Z

    :cond_d
    return-void
.end method

.method private openLogLocked(J)V
    .registers 12

    const-wide/32 v6, 0x5265c00

    rem-long v0, p1, v6

    iget-object v5, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    if-eqz v5, :cond_10

    iget-wide v6, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCurrentLogFileDayTimestamp:J

    cmp-long v5, v0, v6

    if-nez v5, :cond_10

    return-void

    :cond_10
    invoke-direct {p0}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->closeCurrentLogLocked()V

    iput-wide v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCurrentLogFileDayTimestamp:J

    iget-object v5, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    invoke-virtual {v5, p1, p2}, Ljava/util/Date;->setTime(J)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "synclog-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sFilenameDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".log"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :try_start_4b
    new-instance v5, Ljava/io/FileWriter;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iput-object v5, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_53} :catch_54

    :goto_53
    return-void

    :catch_54
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to open log file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_53
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .registers 9

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-object v4, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    array-length v4, v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_28

    if-nez v4, :cond_11

    :cond_f
    monitor-exit v3

    return-void

    :cond_11
    :try_start_11
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v4, v1

    :goto_15
    if-ge v2, v4, :cond_26

    aget-object v0, v1, v2

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, v5}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->dumpFile(Ljava/io/PrintWriter;Ljava/io/File;)V
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_28

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_26
    monitor-exit v3

    return-void

    :catchall_28
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public enabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_6

    const-string/jumbo v0, "job:null"

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "job:#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs log([Ljava/lang/Object;)V
    .registers 12

    const/4 v5, 0x0

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object v6, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->openLogLocked(J)V

    iget-object v7, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_83

    if-nez v7, :cond_14

    monitor-exit v6

    return-void

    :cond_14
    :try_start_14
    iget-object v7, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v7, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    invoke-virtual {v7, v2, v3}, Ljava/util/Date;->setTime(J)V

    iget-object v7, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sTimestampFormat:Ljava/text/SimpleDateFormat;

    iget-object v9, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    array-length v7, p1

    :goto_4a
    if-ge v5, v7, :cond_56

    aget-object v4, p1, v5

    iget-object v8, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    :cond_56
    iget-object v5, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_5d
    .catchall {:try_start_14 .. :try_end_5d} :catchall_83

    :try_start_5d
    iget-object v5, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    iget-object v7, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v5, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    invoke-virtual {v5}, Ljava/io/Writer;->flush()V

    sget-boolean v5, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->DO_LOGCAT:Z

    if-eqz v5, :cond_79

    const-string/jumbo v5, "SyncLogger"

    iget-object v7, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_79} :catch_7b
    .catchall {:try_start_5d .. :try_end_79} :catchall_83

    :cond_79
    :goto_79
    monitor-exit v6

    return-void

    :catch_7b
    move-exception v0

    :try_start_7c
    const-string/jumbo v5, "Failed to write log"

    invoke-direct {p0, v5, v0}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_83

    goto :goto_79

    :catchall_83
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public purgeOldLogs()V
    .registers 6

    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    iget-wide v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mKeepAgeMs:J

    const/4 v4, 0x1

    invoke-static {v0, v4, v2, v3}, Landroid/os/FileUtils;->deleteOlderFiles(Ljava/io/File;IJ)Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
