.class Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunBackupReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const-string/jumbo v2, "android.app.backup.intent.RUN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v2, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_12
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_3d

    move-result v2

    if-lez v2, :cond_40

    :try_start_1c
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->-get1(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_30
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1c .. :try_end_30} :catch_32
    .catchall {:try_start_1c .. :try_end_30} :catchall_3d

    :goto_30
    monitor-exit v3

    :cond_31
    return-void

    :catch_32
    move-exception v0

    :try_start_33
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v4, "Run init intent cancelled"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3d

    goto :goto_30

    :catchall_3d
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_40
    :try_start_40
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_82

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v2, :cond_82

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    if-nez v2, :cond_78

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v4, "Running a backup pass"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_30

    :cond_78
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v4, "Backup time but one already running"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :cond_82
    const-string/jumbo v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Backup pass but e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v5, v5, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " p="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v5, v5, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catchall {:try_start_40 .. :try_end_af} :catchall_3d

    goto :goto_30
.end method
