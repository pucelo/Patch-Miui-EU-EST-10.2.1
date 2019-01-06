.class Lcom/miui/server/BackupManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/BackupManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/server/BackupManagerService$1;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 7

    if-eqz p1, :cond_35

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$1;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get3(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$1;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get7(Lcom/miui/server/BackupManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    :try_start_15
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$1;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get7(Lcom/miui/server/BackupManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$1;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get7(Lcom/miui/server/BackupManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$1;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get7(Lcom/miui/server/BackupManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notify()V
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_37

    :cond_34
    monitor-exit v1

    :cond_35
    const/4 v0, 0x1

    return v0

    :catchall_37
    move-exception v0

    monitor-exit v1

    throw v0
.end method
