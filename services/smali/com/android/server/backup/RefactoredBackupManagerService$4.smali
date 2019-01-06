.class Lcom/android/server/backup/RefactoredBackupManagerService$4;
.super Ljava/lang/Object;
.source "RefactoredBackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/RefactoredBackupManagerService;->scheduleNextFullBackupJob(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

.field final synthetic val$latency:J


# direct methods
.method constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;J)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService$4;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    iput-wide p2, p0, Lcom/android/server/backup/RefactoredBackupManagerService$4;->val$latency:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService$4;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get4(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService$4;->val$latency:J

    invoke-static {v0, v2, v3}, Lcom/android/server/backup/FullBackupJob;->schedule(Landroid/content/Context;J)V

    return-void
.end method
