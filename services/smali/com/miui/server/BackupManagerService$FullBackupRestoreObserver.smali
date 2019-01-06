.class Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;
.super Landroid/app/backup/IFullBackupRestoreObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullBackupRestoreObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/miui/server/BackupManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-direct {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/BackupManagerService;Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;-><init>(Lcom/miui/server/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onBackupPackage(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get3(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get3(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_18
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get0(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get0(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->-get3(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->-get2(Lcom/miui/server/BackupManagerService;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onBackupStart(Ljava/lang/String;I)V

    :cond_35
    return-void
.end method

.method public onEndBackup()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get0(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get0(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->-get3(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->-get2(Lcom/miui/server/BackupManagerService;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onBackupEnd(Ljava/lang/String;I)V

    :cond_1d
    return-void
.end method

.method public onEndRestore()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get0(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get0(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->-get3(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->-get2(Lcom/miui/server/BackupManagerService;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onRestoreEnd(Ljava/lang/String;I)V

    :cond_1d
    return-void
.end method

.method public onRestorePackage(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get0(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-get0(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->-get3(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->-get2(Lcom/miui/server/BackupManagerService;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onRestoreStart(Ljava/lang/String;I)V

    :cond_1d
    return-void
.end method

.method public onStartBackup()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onStartRestore()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onTimeout()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
