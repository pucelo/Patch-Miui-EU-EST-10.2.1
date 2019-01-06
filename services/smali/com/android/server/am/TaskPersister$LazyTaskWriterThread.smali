.class Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;
.super Ljava/lang/Thread;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyTaskWriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private processNextItem()V
    .registers 29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    const-wide/16 v26, -0x1

    cmp-long v21, v24, v26

    if-eqz v21, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x1f4

    add-long v24, v24, v26

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->-set0(Lcom/android/server/am/TaskPersister;J)J

    :cond_2c
    :goto_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v21, v24, v26

    if-eqz v21, :cond_66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    const-wide/16 v24, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->-set0(Lcom/android/server/am/TaskPersister;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_66
    .catchall {:try_start_7 .. :try_end_66} :catchall_ec

    :cond_66
    :try_start_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->wait()V
    :try_end_6f
    .catch Ljava/lang/InterruptedException; {:try_start_66 .. :try_end_6f} :catch_70
    .catchall {:try_start_66 .. :try_end_6f} :catchall_ec

    goto :goto_2c

    :catch_70
    move-exception v9

    goto :goto_2c

    :cond_72
    :try_start_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    :goto_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J
    :try_end_97
    .catchall {:try_start_72 .. :try_end_97} :catchall_ec

    move-result-wide v24

    cmp-long v21, v18, v24

    if-gez v21, :cond_ba

    :try_start_9c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    sub-long v24, v24, v18

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->wait(J)V
    :try_end_b5
    .catch Ljava/lang/InterruptedException; {:try_start_9c .. :try_end_b5} :catch_210
    .catchall {:try_start_9c .. :try_end_b5} :catchall_ec

    :goto_b5
    :try_start_b5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_ec

    move-result-wide v18

    goto :goto_8e

    :cond_ba
    monitor-exit v22

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move/from16 v21, v0

    if-eqz v21, :cond_139

    move-object/from16 v15, v16

    check-cast v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    iget-object v12, v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/server/am/TaskPersister;->-wrap0(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_ef

    const-string/jumbo v21, "TaskPersister"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Error while creating images directory for file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_ec
    move-exception v21

    monitor-exit v22

    throw v21

    :cond_ef
    iget-object v6, v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    :try_start_f2
    new-instance v14, Ljava/io/FileOutputStream;

    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_100} :catch_10f
    .catchall {:try_start_f2 .. :try_end_100} :catchall_134

    :try_start_100
    sget-object v21, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v22, 0x64

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_10b} :catch_20c
    .catchall {:try_start_100 .. :try_end_10b} :catchall_208

    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_10e
    :goto_10e
    return-void

    :catch_10f
    move-exception v8

    :goto_110
    :try_start_110
    const-string/jumbo v21, "TaskPersister"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "saveImage: unable to save "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_130
    .catchall {:try_start_110 .. :try_end_130} :catchall_134

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_10e

    :catchall_134
    move-exception v21

    :goto_135
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v21

    :cond_139
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    move/from16 v21, v0

    if-eqz v21, :cond_10e

    const/16 v17, 0x0

    check-cast v16, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->-get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v22

    monitor-enter v22

    :try_start_156
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    move/from16 v21, v0
    :try_end_15f
    .catchall {:try_start_156 .. :try_end_15f} :catchall_1fa

    if-eqz v21, :cond_16f

    :try_start_161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->-wrap1(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    :try_end_16e
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_16e} :catch_202
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_161 .. :try_end_16e} :catch_205
    .catchall {:try_start_161 .. :try_end_16e} :catchall_1fa

    move-result-object v17

    :cond_16f
    :goto_16f
    monitor-exit v22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v17, :cond_10e

    const/4 v11, 0x0

    const/4 v4, 0x0

    :try_start_177
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/am/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "_task.xml"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_1ab
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_1ab} :catch_200

    :try_start_1ab
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v11

    invoke-virtual/range {v17 .. v17}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v5, v11}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1c6
    .catch Ljava/io/IOException; {:try_start_1ab .. :try_end_1c6} :catch_1c8

    goto/16 :goto_10e

    :catch_1c8
    move-exception v7

    move-object v4, v5

    :goto_1ca
    if-eqz v11, :cond_1cf

    invoke-virtual {v4, v11}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_1cf
    const-string/jumbo v21, "TaskPersister"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Unable to open "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " for persisting. "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10e

    :catchall_1fa
    move-exception v21

    monitor-exit v22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v21

    :catch_200
    move-exception v7

    goto :goto_1ca

    :catch_202
    move-exception v7

    goto/16 :goto_16f

    :catch_205
    move-exception v10

    goto/16 :goto_16f

    :catchall_208
    move-exception v21

    move-object v13, v14

    goto/16 :goto_135

    :catch_20c
    move-exception v8

    move-object v13, v14

    goto/16 :goto_110

    :catch_210
    move-exception v9

    goto/16 :goto_b5
.end method


# virtual methods
.method public run()V
    .registers 9

    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    :goto_a
    iget-object v6, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    monitor-enter v6

    :try_start_d
    iget-object v5, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    iget-object v5, v5, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_61

    move-result v1

    monitor-exit v6

    if-eqz v1, :cond_82

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v5, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v5}, Lcom/android/server/am/TaskPersister;->-get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    monitor-enter v6

    :try_start_22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v5, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v5}, Lcom/android/server/am/TaskPersister;->-get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_31
    if-ltz v4, :cond_64

    iget-object v5, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v5}, Lcom/android/server/am/TaskPersister;->-get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iget-boolean v5, v3, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-nez v5, :cond_4b

    iget-boolean v5, v3, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v5, :cond_5e

    :cond_4b
    if-eqz v2, :cond_55

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5e

    :cond_55
    iget v5, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catchall {:try_start_22 .. :try_end_5e} :catchall_8b

    :cond_5e
    add-int/lit8 v4, v4, -0x1

    goto :goto_31

    :catchall_61
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_64
    :try_start_64
    iget-object v5, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v5}, Lcom/android/server/am/TaskPersister;->-get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v7}, Lcom/android/server/am/TaskPersister;->-get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Lcom/android/server/wm/WindowManagerService;->removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    :try_end_79
    .catchall {:try_start_64 .. :try_end_79} :catchall_8b

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v5, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v5, v0}, Lcom/android/server/am/TaskPersister;->-wrap2(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V

    :cond_82
    iget-object v5, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-static {v5}, Lcom/android/server/am/TaskPersister;->-wrap3(Lcom/android/server/am/TaskPersister;)V

    invoke-direct {p0}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->processNextItem()V

    goto :goto_a

    :catchall_8b
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method
