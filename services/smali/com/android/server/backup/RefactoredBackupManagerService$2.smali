.class Lcom/android/server/backup/RefactoredBackupManagerService$2;
.super Ljava/lang/Object;
.source "RefactoredBackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/TransportManager$TransportBoundListener;


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

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService$2;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransportBound(Lcom/android/internal/backup/IBackupTransport;)Z
    .registers 16

    const/4 v4, 0x0

    :try_start_1
    invoke-interface {p1}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService$2;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get3(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/io/File;

    move-result-object v7

    invoke-direct {v5, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/io/File;

    const-string/jumbo v7, "_need_init_"

    invoke-direct {v3, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_51

    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService$2;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get9(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_56

    :try_start_2c
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService$2;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get8(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/util/ArraySet;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-wide/32 v0, 0xea60

    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService$2;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get0(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/app/AlarmManager;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0xea60

    add-long/2addr v10, v12

    iget-object v9, p0, Lcom/android/server/backup/RefactoredBackupManagerService$2;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v9}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get10(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/app/PendingIntent;

    move-result-object v9

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v10, v11, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_50
    .catchall {:try_start_2c .. :try_end_50} :catchall_53

    :try_start_50
    monitor-exit v8

    :cond_51
    const/4 v7, 0x1

    return v7

    :catchall_53
    move-exception v7

    monitor-exit v8

    throw v7
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_56} :catch_56

    :catch_56
    move-exception v2

    const-string/jumbo v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to regiser transport: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    return v7
.end method
