.class Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "PerformUnifiedRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFeederThread"
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

.field mEnginePipes:[Landroid/os/ParcelFileDescriptor;

.field mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

.field private final mEphemeralOpToken:I

.field mTransportPipes:[Landroid/os/ParcelFileDescriptor;

.field final synthetic this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    const-string/jumbo v0, "StreamFeederThread"

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/RefactoredBackupManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 1

    return-void
.end method

.method public handleCancel(Z)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/RefactoredBackupManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->removeOperation(I)V

    const-string/jumbo v0, "StreamFeederThread"

    const-string/jumbo v1, "Full-data restore target timed out; shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get2(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/16 v3, 0x2d

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-set2(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/backup/IBackupManagerMonitor;)Landroid/app/backup/IBackupManagerMonitor;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->handleTimeout()V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v7

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v5, v0, v7

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v6

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v5, v0, v6

    return-void
.end method

.method public operationComplete(J)V
    .registers 3

    return-void
.end method

.method public run()V
    .registers 26

    sget-object v18, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0xb1c

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    new-instance v2, Lcom/android/server/backup/restore/FullRestoreEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/RefactoredBackupManagerService;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get2(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/backup/restore/FullRestoreEngine;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZZI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    new-instance v2, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;-><init>(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Lcom/android/server/backup/restore/FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v15, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v21, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v22, v2, v3

    const v12, 0x8000

    new-array v11, v12, [B

    new-instance v16, Ljava/io/FileOutputStream;

    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v24, Ljava/io/FileInputStream;

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v2, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    const-string/jumbo v4, "unified-restore-engine"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_94
    :goto_94
    if-nez v20, :cond_cf

    :try_start_96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get3(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v2, v0}, Lcom/android/internal/backup/IBackupTransport;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    move-result v19

    if-lez v19, :cond_c8

    move/from16 v0, v19

    if-le v0, v12, :cond_b0

    move/from16 v12, v19

    move/from16 v0, v19

    new-array v11, v0, [B

    :cond_b0
    move/from16 v23, v19

    :goto_b2
    if-lez v23, :cond_94

    const/4 v2, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v11, v2, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v17

    const/4 v2, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v11, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_c5} :catch_29a
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_c5} :catch_1d0
    .catchall {:try_start_96 .. :try_end_c5} :catchall_362

    sub-int v23, v23, v17

    goto :goto_b2

    :cond_c8
    const/4 v2, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_142

    const/16 v20, 0x0

    :cond_cf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v2

    if-eqz v2, :cond_17f

    const/4 v2, 0x1

    :goto_10d
    invoke-static {v3, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-set1(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)Z

    if-nez v20, :cond_181

    sget-object v18, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-set0(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-set3(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)[B

    :goto_132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    :goto_141
    return-void

    :cond_142
    :try_start_142
    const-string/jumbo v2, "StreamFeederThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " streaming restore for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0xb0f

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_17b
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_17b} :catch_29a
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_17b} :catch_1d0
    .catchall {:try_start_142 .. :try_end_17b} :catchall_362

    move/from16 v20, v19

    goto/16 :goto_94

    :cond_17f
    const/4 v2, 0x0

    goto :goto_10d

    :cond_181
    :try_start_181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get3(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_18c} :catch_1aa

    :goto_18c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/RefactoredBackupManagerService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    const/16 v2, -0x3e8

    move/from16 v0, v20

    if-ne v0, v2, :cond_1cc

    sget-object v18, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_132

    :catch_1aa
    move-exception v14

    const-string/jumbo v2, "StreamFeederThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transport threw from abortFullRestore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, -0x3e8

    goto :goto_18c

    :cond_1cc
    sget-object v18, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto/16 :goto_132

    :catch_1d0
    move-exception v14

    :try_start_1d1
    const-string/jumbo v2, "StreamFeederThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transport failed during restore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0xb0f

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_1f7
    .catchall {:try_start_1d1 .. :try_end_1f7} :catchall_362

    const/16 v20, -0x3e8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v2

    if-eqz v2, :cond_273

    const/4 v2, 0x1

    :goto_237
    invoke-static {v3, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-set1(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)Z

    :try_start_23a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get3(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_245
    .catch Ljava/lang/Exception; {:try_start_23a .. :try_end_245} :catch_275

    :goto_245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/RefactoredBackupManagerService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    const/16 v2, -0x3e8

    move/from16 v0, v20

    if-ne v0, v2, :cond_297

    sget-object v18, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    :goto_262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    goto/16 :goto_141

    :cond_273
    const/4 v2, 0x0

    goto :goto_237

    :catch_275
    move-exception v14

    const-string/jumbo v2, "StreamFeederThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transport threw from abortFullRestore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, -0x3e8

    goto :goto_245

    :cond_297
    sget-object v18, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_262

    :catch_29a
    move-exception v13

    :try_start_29b
    const-string/jumbo v2, "StreamFeederThread"

    const-string/jumbo v3, "Unable to route data for restore"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "I/O error on pipes"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/16 v3, 0xb10

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_2bf
    .catchall {:try_start_29b .. :try_end_2bf} :catchall_362

    const/16 v20, -0x3eb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v2

    if-eqz v2, :cond_33b

    const/4 v2, 0x1

    :goto_2ff
    invoke-static {v3, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-set1(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)Z

    :try_start_302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get3(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_30d
    .catch Ljava/lang/Exception; {:try_start_302 .. :try_end_30d} :catch_33d

    :goto_30d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/RefactoredBackupManagerService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    const/16 v2, -0x3e8

    move/from16 v0, v20

    if-ne v0, v2, :cond_35f

    sget-object v18, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    :goto_32a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    goto/16 :goto_141

    :cond_33b
    const/4 v2, 0x0

    goto :goto_2ff

    :catch_33d
    move-exception v14

    const-string/jumbo v2, "StreamFeederThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transport threw from abortFullRestore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, -0x3e8

    goto :goto_30d

    :cond_35f
    sget-object v18, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_32a

    :catchall_362
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v3

    if-eqz v3, :cond_3d6

    const/4 v3, 0x1

    :goto_3a1
    invoke-static {v4, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-set1(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)Z

    if-nez v20, :cond_3d8

    sget-object v18, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-set0(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-set3(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)[B

    :goto_3c6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    throw v2

    :cond_3d6
    const/4 v3, 0x0

    goto :goto_3a1

    :cond_3d8
    :try_start_3d8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get3(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_3e3
    .catch Ljava/lang/Exception; {:try_start_3d8 .. :try_end_3e3} :catch_401

    :goto_3e3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/RefactoredBackupManagerService;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    const/16 v3, -0x3e8

    move/from16 v0, v20

    if-ne v0, v3, :cond_423

    sget-object v18, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_3c6

    :catch_401
    move-exception v14

    const-string/jumbo v3, "StreamFeederThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Transport threw from abortFullRestore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, -0x3e8

    goto :goto_3e3

    :cond_423
    sget-object v18, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_3c6
.end method
