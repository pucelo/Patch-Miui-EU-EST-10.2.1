.class abstract Lcom/android/server/backup/BackupManagerService$RestoreEngine;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "RestoreEngine"
.end annotation


# static fields
.field public static final SUCCESS:I = 0x0

.field static final TAG:Ljava/lang/String; = "RestoreEngine"

.field public static final TARGET_FAILURE:I = -0x2

.field public static final TRANSPORT_FAILURE:I = -0x3


# instance fields
.field private mResult:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public getResult()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setResult(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public setRunning(Z)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public waitForResult()I
    .registers 4

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->isRunning()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_17

    move-result v1

    if-eqz v1, :cond_11

    :try_start_9
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->wait()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_17

    goto :goto_3

    :catch_f
    move-exception v0

    goto :goto_3

    :cond_11
    monitor-exit v2

    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->getResult()I

    move-result v1

    return v1

    :catchall_17
    move-exception v1

    monitor-exit v2

    throw v1
.end method
