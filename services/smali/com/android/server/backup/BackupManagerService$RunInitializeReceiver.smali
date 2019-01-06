.class Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunInitializeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const-string/jumbo v1, "android.app.backup.intent.INIT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v1, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_12
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v5}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;-><init>(Lcom/android/server/backup/BackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    invoke-virtual {v1, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_43
    .catchall {:try_start_12 .. :try_end_43} :catchall_45

    monitor-exit v2

    :cond_44
    return-void

    :catchall_45
    move-exception v1

    monitor-exit v2

    throw v1
.end method
