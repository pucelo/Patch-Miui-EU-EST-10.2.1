.class Lcom/android/server/backup/RefactoredBackupManagerService$6;
.super Ljava/lang/Object;
.source "RefactoredBackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/RefactoredBackupManagerService;->dataChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$targets:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService$6;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/RefactoredBackupManagerService$6;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/backup/RefactoredBackupManagerService$6;->val$targets:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService$6;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService$6;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService$6;->val$targets:Ljava/util/HashSet;

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->-wrap3(Lcom/android/server/backup/RefactoredBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method
