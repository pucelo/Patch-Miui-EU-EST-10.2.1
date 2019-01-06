.class Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;
.super Ljava/lang/Object;
.source "PerformUnifiedRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EngineThread"
.end annotation


# instance fields
.field mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

.field mEngineStream:Ljava/io/FileInputStream;

.field final synthetic this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Lcom/android/server/backup/restore/FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V
    .registers 7

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {p2, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    return-void
.end method


# virtual methods
.method public handleTimeout()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->handleTimeout()V

    return-void
.end method

.method public isRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRunning()Z

    move-result v0

    return v0
.end method

.method public run()V
    .registers 9

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v3, v2, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v4, v2, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-boolean v5, v2, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget v6, v2, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v7, v2, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/backup/restore/FullRestoreEngine;->restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    goto :goto_0

    :catchall_25
    move-exception v0

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_2c
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public waitForResult()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->waitForResult()I

    move-result v0

    return v0
.end method
