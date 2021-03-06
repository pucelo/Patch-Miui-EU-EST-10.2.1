.class public Lcom/android/server/am/TaskPersister;
.super Ljava/lang/Object;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;,
        Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;,
        Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;,
        Lcom/android/server/am/TaskPersister$WriteQueueItem;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final FLUSH_QUEUE:J = -0x1L

.field private static final IMAGES_DIRNAME:Ljava/lang/String; = "recent_images"

.field static final IMAGE_EXTENSION:Ljava/lang/String; = ".png"

.field private static final INTER_WRITE_DELAY_MS:J = 0x1f4L

.field private static final MAX_WRITE_QUEUE_LENGTH:I = 0x6

.field private static final PERSISTED_TASK_IDS_FILENAME:Ljava/lang/String; = "persisted_taskIds.txt"

.field private static final PRE_TASK_DELAY_MS:J = 0xbb8L

.field static final TAG:Ljava/lang/String; = "TaskPersister"

.field private static final TAG_TASK:Ljava/lang/String; = "task"

.field private static final TASKS_DIRNAME:Ljava/lang/String; = "recent_tasks"

.field private static final TASK_FILENAME_SUFFIX:Ljava/lang/String; = "_task.xml"


# instance fields
.field private final mIoLock:Ljava/lang/Object;

.field private final mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

.field private mNextWriteTime:J

.field private final mRecentTasks:Lcom/android/server/am/RecentTasks;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private final mTaskIdsDir:Ljava/io/File;

.field private final mTaskIdsInFile:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field mWriteQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskPersister$WriteQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/am/TaskPersister;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/TaskPersister;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/am/TaskPersister;->createParentDirectory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->saveToXml(Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/TaskPersister;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->writeTaskIdsFiles()V

    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mIoLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    new-instance v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    const-string/jumbo v1, "LazyTaskWriterThreadTest"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;-><init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/RecentTasks;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mIoLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "recent_images"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_52

    :cond_38
    const-string/jumbo v2, "TaskPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failure deleting legacy images directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "recent_tasks"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-static {v1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_88

    :cond_6e
    const-string/jumbo v2, "TaskPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failure deleting legacy tasks directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system_de"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    iput-object p2, p0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p3, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p4, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    new-instance v2, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    const-string/jumbo v3, "LazyTaskWriterThread"

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;-><init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    return-void
.end method

.method private static createParentDirectory(Ljava/lang/String;)Z
    .registers 3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x1

    goto :goto_13
.end method

.method private fileToString(Ljava/io/File;)Ljava/lang/String;
    .registers 11

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_1b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_56

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_35} :catch_36

    goto :goto_1b

    :catch_36
    move-exception v0

    const-string/jumbo v5, "TaskPersister"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_56
    :try_start_56
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5c} :catch_36

    move-result-object v5

    return-object v5
.end method

.method static getUserImagesDir(I)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "recent_images"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPersistedTaskIdsFile(I)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_33

    const-string/jumbo v1, "TaskPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error while creating user directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "persisted_taskIds.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static getUserTasksDir(I)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "recent_tasks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_3d

    const-string/jumbo v1, "TaskPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failure creating tasks directory for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-object v0
.end method

.method private removeObsoleteFiles(Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2}, Lcom/android/server/am/RecentTasks;->usersWithRecentsLoadedLocked()[I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2f

    move-result-object v0

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v2, 0x0

    array-length v3, v0

    :goto_12
    if-ge v2, v3, :cond_35

    aget v1, v0, v2

    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :catchall_2f
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_35
    return-void
.end method

.method private static removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_c

    const-string/jumbo v6, "TaskPersister"

    const-string/jumbo v7, "File error accessing recents directory (directory doesn\'t exist?)."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v2, 0x0

    :goto_d
    array-length v6, p1

    if-ge v2, v6, :cond_5a

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x5f

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_34

    const/4 v6, 0x0

    :try_start_1f
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_37

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :catch_37
    move-exception v0

    const-string/jumbo v6, "TaskPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeObsoleteFiles: Can\'t parse file="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_34

    :cond_5a
    return-void
.end method

.method private removeThumbnails(Lcom/android/server/am/TaskRecord;)V
    .registers 7

    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_e
    if-ltz v1, :cond_37

    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    instance-of v4, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    if-eqz v4, :cond_34

    new-instance v3, Ljava/io/File;

    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    iget-object v4, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_34
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_37
    return-void
.end method

.method static restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private saveToXml(Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v2, "task"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v2, "task"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    return-object v0
.end method

.method private taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)",
            "Lcom/android/server/am/TaskRecord;"
        }
    .end annotation

    const/4 v5, 0x0

    if-gez p1, :cond_4

    return-object v5

    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_a
    if-ltz v1, :cond_1a

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_17

    return-object v0

    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_1a
    const-string/jumbo v2, "TaskPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Restore affiliation error looking for taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method private writeTaskIdsFiles()V
    .registers 12

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v7, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v6, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v6}, Lcom/android/server/am/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v8

    const/4 v6, 0x0

    array-length v9, v8

    :goto_13
    if-ge v6, v9, :cond_47

    aget v5, v8, v6

    iget-object v10, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget-object v10, v10, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    iget-object v10, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_34

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    :goto_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_34
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v4

    iget-object v10, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v10, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_41

    goto :goto_31

    :catchall_41
    move-exception v6

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :cond_47
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, 0x0

    :goto_4c
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_62

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/TaskPersister;->writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    :cond_62
    return-void
.end method

.method private yieldIfQueueTooDeep()V
    .registers 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_12

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    monitor-exit p0

    if-eqz v0, :cond_11

    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_11
    return-void

    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method flush()V
    .registers 7

    const-wide/16 v4, -0x1

    monitor-enter p0

    const-wide/16 v2, -0x1

    :try_start_5
    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_17

    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->wait()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_15
    .catchall {:try_start_a .. :try_end_d} :catchall_17

    :goto_d
    :try_start_d
    iget-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_17

    cmp-long v1, v2, v4

    if-eqz v1, :cond_a

    monitor-exit p0

    return-void

    :catch_15
    move-exception v0

    goto :goto_d

    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_9
    if-ltz v3, :cond_2a

    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    instance-of v4, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    if-eqz v4, :cond_27

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move-object v1, v0

    iget-object v4, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    iget-object v4, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_2d

    monitor-exit p0

    return-object v4

    :cond_27
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    :cond_2a
    const/4 v4, 0x0

    monitor-exit p0

    return-object v4

    :catchall_2d
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-static {p1}, Lcom/android/server/am/TaskPersister;->restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .registers 15

    iget-object v8, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_15

    iget-object v8, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v8

    return-object v8

    :cond_15
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v9, p0, Lcom/android/server/am/TaskPersister;->mIoLock:Ljava/lang/Object;

    monitor-enter v9

    const/4 v5, 0x0

    :try_start_1e
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_2c} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_59
    .catchall {:try_start_1e .. :try_end_2c} :catchall_80

    :cond_2c
    :try_start_2c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4a

    const-string/jumbo v8, "\\s+"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    array-length v11, v10

    :goto_3b
    if-ge v8, v11, :cond_2c

    aget-object v7, v10, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v12, 0x1

    invoke-virtual {v4, v2, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_47} :catch_8b
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_47} :catch_8e
    .catchall {:try_start_2c .. :try_end_47} :catchall_88

    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    :cond_4a
    :try_start_4a
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_85

    move-object v5, v6

    :goto_4e
    monitor-exit v9

    iget-object v8, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v8, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v8

    return-object v8

    :catch_59
    move-exception v1

    :goto_5a
    :try_start_5a
    const-string/jumbo v8, "TaskPersister"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error while reading taskIds file for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_5a .. :try_end_74} :catchall_80

    :try_start_74
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_4e

    :catchall_78
    move-exception v8

    :goto_79
    monitor-exit v9

    throw v8

    :catch_7b
    move-exception v0

    :goto_7c
    :try_start_7c
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4e

    :catchall_80
    move-exception v8

    :goto_81
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v8
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_78

    :catchall_85
    move-exception v8

    move-object v5, v6

    goto :goto_79

    :catchall_88
    move-exception v8

    move-object v5, v6

    goto :goto_81

    :catch_8b
    move-exception v0

    move-object v5, v6

    goto :goto_7c

    :catch_8e
    move-exception v1

    move-object v5, v6

    goto :goto_5a
.end method

.method restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;)Ljava/util/List;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseBooleanArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    if-nez v11, :cond_33

    const-string/jumbo v19, "TaskPersister"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "restoreTasksForUserLocked: Unable to list files from "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v17

    :cond_33
    const/16 v16, 0x0

    :goto_35
    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_25c

    aget-object v14, v11, v16

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "_task.xml"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_50

    :cond_4d
    :goto_4d
    add-int/lit8 v16, v16, 0x1

    goto :goto_35

    :cond_50
    :try_start_50
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    const-string/jumbo v21, "_task.xml"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    sub-int v20, v20, v21

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v19

    if-eqz v19, :cond_b4

    const-string/jumbo v19, "TaskPersister"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Task #"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " has already been created so we don\'t restore again"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_a4} :catch_a5

    goto :goto_4d

    :catch_a5
    move-exception v5

    const-string/jumbo v19, "TaskPersister"

    const-string/jumbo v20, "Unexpected task file name"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    :cond_b4
    const/4 v9, 0x0

    const/4 v3, 0x0

    :try_start_b6
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/FileReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_c4} :catch_2b4
    .catchall {:try_start_b6 .. :try_end_c4} :catchall_2b1

    :try_start_c4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    invoke-interface {v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    :goto_cb
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_252

    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v6, v0, :cond_252

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v6, v0, :cond_139

    const-string/jumbo v19, "task"

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_227

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Lcom/android/server/am/TaskRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;

    move-result-object v13

    if-eqz v13, :cond_1f8

    iget v15, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(III)Lcom/android/server/am/TaskRecord;

    move-result-object v19

    if-eqz v19, :cond_191

    const-string/jumbo v19, "TaskPersister"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Existing task with taskId "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "found"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_139
    :goto_139
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_13c} :catch_13d
    .catchall {:try_start_c4 .. :try_end_13c} :catchall_1ca

    goto :goto_cb

    :catch_13d
    move-exception v4

    move-object v9, v10

    :goto_13f
    :try_start_13f
    const-string/jumbo v19, "TaskPersister"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Unable to parse "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ". Error "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v19, "TaskPersister"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Failing file: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_186
    .catchall {:try_start_13f .. :try_end_186} :catchall_2b1

    const/4 v3, 0x1

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v3, :cond_4d

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    goto/16 :goto_4d

    :cond_191
    :try_start_191
    iget v0, v13, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_1d5

    const-string/jumbo v19, "TaskPersister"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Task with userId "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v13, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " found in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c8
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_1c8} :catch_13d
    .catchall {:try_start_191 .. :try_end_1c8} :catchall_1ca

    goto/16 :goto_139

    :catchall_1ca
    move-exception v19

    move-object v9, v10

    :goto_1cc
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v3, :cond_1d4

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    :cond_1d4
    throw v19

    :cond_1d5
    :try_start_1d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/ActivityStackSupervisor;->setNextTaskIdForUserLocked(II)V

    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v13, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_139

    :cond_1f8
    const-string/jumbo v19, "TaskPersister"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "restoreTasksForUserLocked: Unable to restore taskFile="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_139

    :cond_227
    const-string/jumbo v19, "TaskPersister"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "restoreTasksForUserLocked: Unknown xml event="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " name="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_250
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_250} :catch_13d
    .catchall {:try_start_1d5 .. :try_end_250} :catchall_1ca

    goto/16 :goto_139

    :cond_252
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v3, :cond_4d

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    goto/16 :goto_4d

    :cond_25c
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v12, v0}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v16, v19, -0x1

    :goto_26b
    if-ltz v16, :cond_2a0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskRecord;

    iget v0, v13, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    iget v0, v13, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    add-int/lit8 v16, v16, -0x1

    goto :goto_26b

    :cond_2a0
    new-instance v19, Lcom/android/server/am/TaskPersister$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/TaskPersister$1;-><init>(Lcom/android/server/am/TaskPersister;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v17

    :catchall_2b1
    move-exception v19

    goto/16 :goto_1cc

    :catch_2b4
    move-exception v4

    goto/16 :goto_13f
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_9
    if-ltz v4, :cond_25

    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    instance-of v5, v3, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    if-eqz v5, :cond_46

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move-object v2, v0

    iget-object v5, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    iput-object p1, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    :cond_25
    if-gez v4, :cond_31

    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    invoke-direct {v6, p2, p1}, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x6

    if-le v5, v6, :cond_49

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_5b

    monitor-exit p0

    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->yieldIfQueueTooDeep()V

    return-void

    :cond_46
    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    :cond_49
    :try_start_49
    iget-wide v6, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_3e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0xbb8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_5b

    goto :goto_3e

    :catchall_5b
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method startPersisting()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->start()V

    :cond_d
    return-void
.end method

.method unloadUserDataFromMemory(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method wakeup(Lcom/android/server/am/TaskRecord;Z)V
    .registers 9

    monitor-enter p0

    if-eqz p1, :cond_50

    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_b
    if-ltz v1, :cond_26

    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    instance-of v2, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    if-eqz v2, :cond_4d

    check-cast v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    iget-object v2, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    if-ne v2, p1, :cond_4d

    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-nez v2, :cond_26

    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->removeThumbnails(Lcom/android/server/am/TaskRecord;)V

    :cond_26
    if-gez v1, :cond_36

    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    invoke-direct {v3, p1}, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;-><init>(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    :goto_36
    if-nez p2, :cond_41

    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_5f

    :cond_41
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    :cond_45
    :goto_45
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_5c

    monitor-exit p0

    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->yieldIfQueueTooDeep()V

    return-void

    :cond_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_50
    :try_start_50
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/am/TaskPersister$WriteQueueItem;-><init>(Lcom/android/server/am/TaskPersister$WriteQueueItem;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_5c

    goto :goto_36

    :catchall_5c
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_5f
    :try_start_5f
    iget-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_45

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    :try_end_70
    .catchall {:try_start_5f .. :try_end_70} :catchall_5c

    goto :goto_45
.end method

.method writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V
    .registers 12

    if-gez p2, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/am/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/am/TaskPersister;->mIoLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v3, 0x0

    :try_start_b
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_39
    .catchall {:try_start_b .. :try_end_15} :catchall_5b

    const/4 v1, 0x0

    :goto_16
    :try_start_16
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_33

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_30} :catch_66
    .catchall {:try_start_16 .. :try_end_30} :catchall_63

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_33
    :try_start_33
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_60

    move-object v3, v4

    :goto_37
    monitor-exit v6

    return-void

    :catch_39
    move-exception v0

    :goto_3a
    :try_start_3a
    const-string/jumbo v5, "TaskPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error while writing taskIds file for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_3a .. :try_end_54} :catchall_5b

    :try_start_54
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_37

    :catchall_58
    move-exception v5

    :goto_59
    monitor-exit v6

    throw v5

    :catchall_5b
    move-exception v5

    :goto_5c
    :try_start_5c
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_58

    :catchall_60
    move-exception v5

    move-object v3, v4

    goto :goto_59

    :catchall_63
    move-exception v5

    move-object v3, v4

    goto :goto_5c

    :catch_66
    move-exception v0

    move-object v3, v4

    goto :goto_3a
.end method
