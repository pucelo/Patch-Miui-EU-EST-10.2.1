.class Lcom/android/server/backup/RefactoredBackupManagerService$7;
.super Landroid/app/backup/SelectBackupTransportCallback;
.source "RefactoredBackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/RefactoredBackupManagerService;->selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

.field final synthetic val$listener:Landroid/app/backup/ISelectBackupTransportCallback;

.field final synthetic val$transport:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService$7;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/RefactoredBackupManagerService$7;->val$transport:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/server/backup/RefactoredBackupManagerService$7;->val$listener:Landroid/app/backup/ISelectBackupTransportCallback;

    invoke-direct {p0}, Landroid/app/backup/SelectBackupTransportCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 6

    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to select transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService$7;->val$transport:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_20
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService$7;->val$listener:Landroid/app/backup/ISelectBackupTransportCallback;

    invoke-interface {v1, p1}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    :goto_25
    return-void

    :catch_26
    move-exception v0

    goto :goto_25
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService$7;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get11(Lcom/android/server/backup/RefactoredBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService$7;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get4(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "backup_transport"

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService$7;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get11(Lcom/android/server/backup/RefactoredBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Transport successfully selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService$7;->val$transport:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_43
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService$7;->val$listener:Landroid/app/backup/ISelectBackupTransportCallback;

    invoke-interface {v1, p1}, Landroid/app/backup/ISelectBackupTransportCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_48} :catch_49

    :goto_48
    return-void

    :catch_49
    move-exception v0

    goto :goto_48
.end method
