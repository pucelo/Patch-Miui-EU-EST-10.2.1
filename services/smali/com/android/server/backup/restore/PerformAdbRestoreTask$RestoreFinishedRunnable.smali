.class Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;
.super Ljava/lang/Object;
.source "PerformAdbRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/restore/PerformAdbRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestoreFinishedRunnable"
.end annotation


# instance fields
.field private final mAgent:Landroid/app/IBackupAgent;

.field private final mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

.field private final mToken:I


# direct methods
.method constructor <init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/RefactoredBackupManagerService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;->mAgent:Landroid/app/IBackupAgent;

    iput p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;->mToken:I

    iput-object p3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;->mAgent:Landroid/app/IBackupAgent;

    iget v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;->mToken:I

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    goto :goto_d
.end method
