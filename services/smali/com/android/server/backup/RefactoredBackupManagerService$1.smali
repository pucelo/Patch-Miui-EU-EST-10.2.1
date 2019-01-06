.class Lcom/android/server/backup/RefactoredBackupManagerService$1;
.super Ljava/lang/Object;
.source "RefactoredBackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/RefactoredBackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/RefactoredBackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService$1;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService$1;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v8}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get9(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_7
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x1000

    invoke-direct {v3, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService$1;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v8}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get5(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v6, 0x0

    :goto_25
    if-ge v6, v0, :cond_40

    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService$1;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v8}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get5(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-object v8, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-wide v10, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    invoke-virtual {v2, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_40
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    new-instance v1, Landroid/util/AtomicFile;

    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService$1;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v8}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get6(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1, v7}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5c} :catch_5e
    .catchall {:try_start_7 .. :try_end_5c} :catchall_69

    :goto_5c
    monitor-exit v9

    return-void

    :catch_5e
    move-exception v4

    :try_start_5f
    const-string/jumbo v8, "BackupManagerService"

    const-string/jumbo v10, "Unable to write backup schedule!"

    invoke-static {v8, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_5f .. :try_end_68} :catchall_69

    goto :goto_5c

    :catchall_69
    move-exception v8

    monitor-exit v9

    throw v8
.end method
