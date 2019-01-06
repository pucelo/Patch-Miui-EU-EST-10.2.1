.class public Lmiui/mqsas/fdmonitor/FdInfoManager;
.super Ljava/lang/Object;
.source "FdInfoManager.java"


# static fields
.field private static INTERESTED_CLASS:[Ljava/lang/String;

.field private static INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "FdInfoManager"

    sput-object v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "java.lang.OutOfMemoryError"

    aput-object v1, v0, v2

    sput-object v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->INTERESTED_CLASS:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Could not allocate JNI Env"

    aput-object v1, v0, v2

    const-string/jumbo v1, "Could not allocate dup blob fd"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Could not read input channel file descriptors from parcel"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "pthread_create"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "InputChannel is not initialized"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "Could not open input channel pair"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lmiui/mqsas/fdmonitor/FdInfoManager;->INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkEventAndDumpFd(Lmiui/mqsas/sdk/event/JavaExceptionEvent;Ljava/lang/String;I)V
    .registers 7

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    invoke-virtual {v1, p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->checkIfNeedDumpFd(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I

    move-result v0

    sget-object v1, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MIUI_FD in checkEventAndDumpFd shouldDumpFd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    invoke-static {p1, p2}, Lmiui/mqsas/fdmonitor/FdInfoManager;->dumpFdInfo(Ljava/lang/String;I)V

    :cond_27
    return-void
.end method

.method public static dumpFdInfo(Ljava/lang/String;I)V
    .registers 7

    :try_start_0
    sget-object v2, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MIUI_FD ------ fd info Begin : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lmiui/mqsas/fdmonitor/FdInfoManager;->getOpenFds(I)V

    sget-object v2, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MIUI_FD ------ fd info End : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_59} :catch_5f
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_59} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_59} :catch_5a

    :goto_59
    return-void

    :catch_5a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_59

    :catch_5f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_59
.end method

.method private static getOpenFds(I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v5, Ljava/io/File;

    const-string/jumbo v7, "/proc/self/fd"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    sget-object v7, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MIUI_FD pid : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " fds.size: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_46

    array-length v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_2d
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3d

    array-length v5, v3

    if-nez v5, :cond_4a

    :cond_3d
    sget-object v5, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "failed to read fds!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_46
    const-string/jumbo v5, "null"

    goto :goto_2d

    :cond_4a
    array-length v7, v3

    move v5, v6

    :goto_4c
    if-ge v5, v7, :cond_8a

    aget-object v1, v3, v5

    :try_start_50
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MIUI_FD "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " -----> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Landroid/system/ErrnoException; {:try_start_50 .. :try_end_7c} :catch_7f

    :cond_7c
    :goto_7c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    :catch_7f
    move-exception v0

    iget v6, v0, Landroid/system/ErrnoException;->errno:I

    sget v8, Landroid/system/OsConstants;->ENOENT:I

    if-eq v6, v8, :cond_7c

    invoke-virtual {v0}, Landroid/system/ErrnoException;->printStackTrace()V

    goto :goto_7c

    :cond_8a
    return-void
.end method

.method public static isInterestedFdLeakEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;Ljava/lang/Throwable;)Z
    .registers 13

    const/4 v10, 0x1

    const/4 v6, 0x0

    if-eqz p0, :cond_34

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getExceptionClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getExceptionMessage()Ljava/lang/String;

    move-result-object v2

    :goto_c
    sget-object v7, Lmiui/mqsas/fdmonitor/FdInfoManager;->INTERESTED_CLASS:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_10
    if-ge v5, v8, :cond_4c

    aget-object v3, v7, v5

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_49

    sget-object v5, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MIUI_FD Interested Fd leak events, exceptionClass : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_34
    if-eqz p1, :cond_40

    new-instance v0, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v0, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    iget-object v1, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    goto :goto_c

    :cond_40
    sget-object v5, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "MIUI_FD Interested Fd leak events, wrong params"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_4c
    sget-object v7, Lmiui/mqsas/fdmonitor/FdInfoManager;->INTERESTED_EXCEPTION_MSG:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_50
    if-ge v5, v8, :cond_79

    aget-object v4, v7, v5

    if-eqz v2, :cond_76

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_76

    sget-object v5, Lmiui/mqsas/fdmonitor/FdInfoManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MIUI_FD Interested Fd leak events, exceptionMsg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_76
    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    :cond_79
    return v6
.end method
