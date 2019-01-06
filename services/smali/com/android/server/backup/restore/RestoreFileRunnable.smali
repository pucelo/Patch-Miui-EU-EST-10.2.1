.class Lcom/android/server/backup/restore/RestoreFileRunnable;
.super Ljava/lang/Object;
.source "RestoreFileRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mAgent:Landroid/app/IBackupAgent;

.field private final mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

.field private final mInfo:Lcom/android/server/backup/FileMetadata;

.field private final mSocket:Landroid/os/ParcelFileDescriptor;

.field private final mToken:I


# direct methods
.method constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mAgent:Landroid/app/IBackupAgent;

    iput-object p3, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mInfo:Lcom/android/server/backup/FileMetadata;

    iput p5, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mToken:I

    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mSocket:Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mSocket:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mInfo:Lcom/android/server/backup/FileMetadata;

    iget-wide v3, v3, Lcom/android/server/backup/FileMetadata;->size:J

    iget-object v5, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mInfo:Lcom/android/server/backup/FileMetadata;

    iget v5, v5, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v6, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mInfo:Lcom/android/server/backup/FileMetadata;

    iget-object v6, v6, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mInfo:Lcom/android/server/backup/FileMetadata;

    iget-object v7, v7, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mInfo:Lcom/android/server/backup/FileMetadata;

    iget-wide v8, v8, Lcom/android/server/backup/FileMetadata;->mode:J

    iget-object v10, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mInfo:Lcom/android/server/backup/FileMetadata;

    iget-wide v10, v10, Lcom/android/server/backup/FileMetadata;->mtime:J

    iget v12, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mToken:I

    iget-object v13, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v13}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v13

    invoke-interface/range {v1 .. v13}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_28

    :goto_27
    return-void

    :catch_28
    move-exception v0

    goto :goto_27
.end method
