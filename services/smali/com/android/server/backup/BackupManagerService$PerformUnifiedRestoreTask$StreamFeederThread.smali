.class Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
.super Lcom/android/server/backup/BackupManagerService$RestoreEngine;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFeederThread"
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

.field mEnginePipes:[Landroid/os/ParcelFileDescriptor;

.field mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

.field private final mEphemeralOpToken:I

.field mTransportPipes:[Landroid/os/ParcelFileDescriptor;

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService$RestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    const-string/jumbo v0, "StreamFeederThread"

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->TAG:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

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

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->-wrap19(Lcom/android/server/backup/BackupManagerService;I)V

    const-string/jumbo v0, "StreamFeederThread"

    const-string/jumbo v1, "Full-data restore target timed out; shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/16 v3, 0x2d

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4, v5}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set2(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/backup/IBackupManagerMonitor;)Landroid/app/backup/IBackupManagerMonitor;

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->handleTimeout()V

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v7

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v5, v0, v7

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v6

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v5, v0, v6

    return-void
.end method

.method public operationComplete(J)V
    .registers 3

    return-void
.end method

.method public run()V
    .registers 26

    sget-object v18, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0xb1c

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    new-instance v2, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZZI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;-><init>(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v15, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v21, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

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

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    const-string/jumbo v4, "unified-restore-engine"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_92
    :goto_92
    if-nez v20, :cond_cd

    :try_start_94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get2(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v2, v0}, Lcom/android/internal/backup/IBackupTransport;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    move-result v19

    if-lez v19, :cond_c6

    move/from16 v0, v19

    if-le v0, v12, :cond_ae

    move/from16 v12, v19

    move/from16 v0, v19

    new-array v11, v0, [B

    :cond_ae
    move/from16 v23, v19

    :goto_b0
    if-lez v23, :cond_92

    const/4 v2, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v11, v2, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v17

    const/4 v2, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v11, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_c3} :catch_294
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_c3} :catch_1cc
    .catchall {:try_start_94 .. :try_end_c3} :catchall_35a

    sub-int v23, v23, v17

    goto :goto_b0

    :cond_c6
    const/4 v2, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_140

    const/16 v20, 0x0

    :cond_cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v2

    if-eqz v2, :cond_17d

    const/4 v2, 0x1

    :goto_10b
    invoke-static {v3, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Z)Z

    if-nez v20, :cond_17f

    sget-object v18, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getWidgetData()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set3(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;[B)[B

    :goto_130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    :goto_13f
    return-void

    :cond_140
    :try_start_140
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

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

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
    :try_end_179
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_179} :catch_294
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_179} :catch_1cc
    .catchall {:try_start_140 .. :try_end_179} :catchall_35a

    move/from16 v20, v19

    goto/16 :goto_92

    :cond_17d
    const/4 v2, 0x0

    goto :goto_10b

    :cond_17f
    :try_start_17f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get2(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_18a} :catch_1a6

    :goto_18a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    const/16 v2, -0x3e8

    move/from16 v0, v20

    if-ne v0, v2, :cond_1c8

    sget-object v18, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_130

    :catch_1a6
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

    goto :goto_18a

    :cond_1c8
    sget-object v18, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto/16 :goto_130

    :catch_1cc
    move-exception v14

    :try_start_1cd
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
    :try_end_1f3
    .catchall {:try_start_1cd .. :try_end_1f3} :catchall_35a

    const/16 v20, -0x3e8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v2

    if-eqz v2, :cond_26d

    const/4 v2, 0x1

    :goto_233
    invoke-static {v3, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Z)Z

    :try_start_236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get2(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_241
    .catch Ljava/lang/Exception; {:try_start_236 .. :try_end_241} :catch_26f

    :goto_241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    const/16 v2, -0x3e8

    move/from16 v0, v20

    if-ne v0, v2, :cond_291

    sget-object v18, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    :goto_25c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    goto/16 :goto_13f

    :cond_26d
    const/4 v2, 0x0

    goto :goto_233

    :catch_26f
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

    goto :goto_241

    :cond_291
    sget-object v18, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_25c

    :catch_294
    move-exception v13

    :try_start_295
    const-string/jumbo v2, "StreamFeederThread"

    const-string/jumbo v3, "Unable to route data for restore"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "I/O error on pipes"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/16 v3, 0xb10

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_2b9
    .catchall {:try_start_295 .. :try_end_2b9} :catchall_35a

    const/16 v20, -0x3eb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v2

    if-eqz v2, :cond_333

    const/4 v2, 0x1

    :goto_2f9
    invoke-static {v3, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Z)Z

    :try_start_2fc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get2(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_307
    .catch Ljava/lang/Exception; {:try_start_2fc .. :try_end_307} :catch_335

    :goto_307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    const/16 v2, -0x3e8

    move/from16 v0, v20

    if-ne v0, v2, :cond_357

    sget-object v18, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    :goto_322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    goto/16 :goto_13f

    :cond_333
    const/4 v2, 0x0

    goto :goto_2f9

    :catch_335
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

    goto :goto_307

    :cond_357
    sget-object v18, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_322

    :catchall_35a
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v3

    if-eqz v3, :cond_3ce

    const/4 v3, 0x1

    :goto_399
    invoke-static {v4, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Z)Z

    if-nez v20, :cond_3d0

    sget-object v18, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getWidgetData()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set3(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;[B)[B

    :goto_3be
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    throw v2

    :cond_3ce
    const/4 v3, 0x0

    goto :goto_399

    :cond_3d0
    :try_start_3d0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get2(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_3db
    .catch Ljava/lang/Exception; {:try_start_3d0 .. :try_end_3db} :catch_3f7

    :goto_3db
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    const/16 v3, -0x3e8

    move/from16 v0, v20

    if-ne v0, v3, :cond_419

    sget-object v18, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_3be

    :catch_3f7
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

    goto :goto_3db

    :cond_419
    sget-object v18, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_3be
.end method
