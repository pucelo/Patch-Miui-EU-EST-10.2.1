.class public Lcom/android/server/backup/restore/ActiveRestoreSession;
.super Landroid/app/backup/IRestoreSession$Stub;
.source "ActiveRestoreSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RestoreSession"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

.field mEnded:Z

.field private mPackageName:Ljava/lang/String;

.field public mRestoreSets:[Landroid/app/backup/RestoreSet;

.field private mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

.field mTimedOut:Z


# direct methods
.method static synthetic -set0(Lcom/android/server/backup/restore/ActiveRestoreSession;Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/backup/IRestoreSession$Stub;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    iput-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    return-void
.end method


# virtual methods
.method public declared-synchronized endRestoreSession()V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "RestoreSession"

    const-string/jumbo v1, "endRestoreSession"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    if-eqz v0, :cond_19

    const-string/jumbo v0, "RestoreSession"

    const-string/jumbo v1, "Session already timed out"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_26

    monitor-exit p0

    return-void

    :cond_19
    :try_start_19
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;

    iget-object v2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Lcom/android/server/backup/RefactoredBackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_26

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .registers 11

    const/4 v7, -0x1

    monitor-enter p0

    :try_start_2
    iget-object v4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "android.permission.BACKUP"

    const-string/jumbo v6, "getAvailableRestoreSets"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1f

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Observer must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_1f
    :try_start_1f
    iget-boolean v4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-eqz v4, :cond_2c

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Restore session already ended"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2c
    iget-boolean v4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    if-eqz v4, :cond_3b

    const-string/jumbo v4, "RestoreSession"

    const-string/jumbo v5, "Session already timed out"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_1f .. :try_end_39} :catchall_1c

    monitor-exit p0

    return v7

    :cond_3b
    :try_start_3b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_1c

    move-result-wide v2

    :try_start_3f
    iget-object v4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-nez v4, :cond_51

    const-string/jumbo v4, "RestoreSession"

    const-string/jumbo v5, "Null transport getting restore sets"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4c} :catch_86
    .catchall {:try_start_3f .. :try_end_4c} :catchall_95

    :try_start_4c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_1c

    monitor-exit p0

    return v7

    :cond_51
    :try_start_51
    iget-object v4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v4

    new-instance v5, Lcom/android/server/backup/params/RestoreGetSetsParams;

    iget-object v6, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-direct {v5, v6, p0, p1, p2}, Lcom/android/server/backup/params/RestoreGetSetsParams;-><init>(Lcom/android/internal/backup/IBackupTransport;Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)V

    const/4 v6, 0x6

    invoke-virtual {v4, v6, v5}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_80} :catch_86
    .catchall {:try_start_51 .. :try_end_80} :catchall_95

    :try_start_80
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_1c

    const/4 v4, 0x0

    monitor-exit p0

    return v4

    :catch_86
    move-exception v0

    :try_start_87
    const-string/jumbo v4, "RestoreSession"

    const-string/jumbo v5, "Error in getAvailableRestoreSets"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_87 .. :try_end_90} :catchall_95

    :try_start_90
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_1c

    monitor-exit p0

    return v7

    :catchall_95
    move-exception v4

    :try_start_96
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_9a
    .catchall {:try_start_96 .. :try_end_9a} :catchall_1c
.end method

.method public markTimedOut()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    return-void
.end method

.method public declared-synchronized restoreAll(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .registers 20

    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v6, "performRestore"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restoreAll token="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " observer="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-eqz v3, :cond_4b

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Restore session already ended"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_4b
    :try_start_4b
    iget-boolean v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    if-eqz v3, :cond_5b

    const-string/jumbo v3, "RestoreSession"

    const-string/jumbo v4, "Session already timed out"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_48

    const/4 v3, -0x1

    monitor-exit p0

    return v3

    :cond_5b
    :try_start_5b
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-eqz v3, :cond_63

    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v3, :cond_6f

    :cond_63
    const-string/jumbo v3, "RestoreSession"

    const-string/jumbo v4, "Ignoring restoreAll() with no restore set"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_5b .. :try_end_6c} :catchall_48

    const/4 v3, -0x1

    monitor-exit p0

    return v3

    :cond_6f
    :try_start_6f
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_7f

    const-string/jumbo v3, "RestoreSession"

    const-string/jumbo v4, "Ignoring restoreAll() on single-package session"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_6f .. :try_end_7c} :catchall_48

    const/4 v3, -0x1

    monitor-exit p0

    return v3

    :cond_7f
    :try_start_7f
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_84} :catch_de
    .catchall {:try_start_7f .. :try_end_84} :catchall_48

    move-result-object v5

    :try_start_85
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14
    :try_end_8c
    .catchall {:try_start_85 .. :try_end_8c} :catchall_48

    const/4 v10, 0x0

    :goto_8d
    :try_start_8d
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v3, v3

    if-ge v10, v3, :cond_103

    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v3, v3, v10

    iget-wide v6, v3, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v3, p1, v6

    if-nez v3, :cond_100

    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    new-instance v3, Lcom/android/server/backup/params/RestoreParams;

    iget-object v4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J)V

    iput-object v3, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_da
    .catchall {:try_start_8d .. :try_end_da} :catchall_12c

    :try_start_da
    monitor-exit v14
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_48

    const/4 v3, 0x0

    monitor-exit p0

    return v3

    :catch_de
    move-exception v2

    :try_start_df
    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to get transport dir for restore: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fd
    .catchall {:try_start_df .. :try_end_fd} :catchall_48

    const/4 v3, -0x1

    monitor-exit p0

    return v3

    :cond_100
    add-int/lit8 v10, v10, 0x1

    goto :goto_8d

    :cond_103
    :try_start_103
    monitor-exit v14

    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Restore token "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " not found"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_129
    .catchall {:try_start_103 .. :try_end_129} :catchall_48

    const/4 v3, -0x1

    monitor-exit p0

    return v3

    :catchall_12c
    move-exception v3

    :try_start_12d
    monitor-exit v14

    throw v3
    :try_end_12f
    .catchall {:try_start_12d .. :try_end_12f} :catchall_48
.end method

.method public declared-synchronized restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .registers 20

    monitor-enter p0

    :try_start_1
    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restorePackage pkg="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " obs="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "monitor="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-eqz v3, :cond_49

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Restore session already ended"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_49
    :try_start_49
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    if-eqz v3, :cond_5b

    const-string/jumbo v3, "RestoreSession"

    const-string/jumbo v4, "Session already timed out"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_49 .. :try_end_58} :catchall_46

    const/4 v3, -0x1

    monitor-exit p0

    return v3

    :cond_5b
    :try_start_5b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_9b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9b

    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignoring attempt to restore pkg="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " on session for package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_5b .. :try_end_98} :catchall_46

    const/4 v3, -0x1

    monitor-exit p0

    return v3

    :cond_9b
    const/4 v10, 0x0

    :try_start_9c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_aa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9c .. :try_end_aa} :catch_103
    .catchall {:try_start_9c .. :try_end_aa} :catchall_46

    move-result-object v10

    :try_start_ab
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v13

    const/4 v3, -0x1

    if-ne v13, v3, :cond_123

    iget-object v3, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v3, v4, :cond_123

    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restorePackage: bad packageName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " or calling uid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "No permission to restore other packages"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_103
    move-exception v12

    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Asked to restore nonexistent pkg "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_120
    .catchall {:try_start_ab .. :try_end_120} :catchall_46

    const/4 v3, -0x1

    monitor-exit p0

    return v3

    :cond_123
    :try_start_123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_46

    move-result-wide v14

    :try_start_127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v8

    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restorePackage pkg="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " token="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    cmp-long v3, v8, v6

    if-nez v3, :cond_171

    const-string/jumbo v3, "RestoreSession"

    const-string/jumbo v4, "No data available for this package; not restoring"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16b
    .catchall {:try_start_127 .. :try_end_16b} :catchall_1e3

    :try_start_16b
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_16e
    .catchall {:try_start_16b .. :try_end_16e} :catchall_46

    const/4 v3, -0x1

    monitor-exit p0

    return v3

    :cond_171
    :try_start_171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_178} :catch_1be
    .catchall {:try_start_171 .. :try_end_178} :catchall_1e3

    move-result-object v5

    :try_start_179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    new-instance v3, Lcom/android/server/backup/params/RestoreParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;)V

    iput-object v3, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1b8
    .catchall {:try_start_179 .. :try_end_1b8} :catchall_1e3

    :try_start_1b8
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1bb
    .catchall {:try_start_1b8 .. :try_end_1bb} :catchall_46

    const/4 v3, 0x0

    monitor-exit p0

    return v3

    :catch_1be
    move-exception v2

    :try_start_1bf
    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to get transport dir for restorePackage: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1dd
    .catchall {:try_start_1bf .. :try_end_1dd} :catchall_1e3

    :try_start_1dd
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1e0
    .catchall {:try_start_1dd .. :try_end_1e0} :catchall_46

    const/4 v3, -0x1

    monitor-exit p0

    return v3

    :catchall_1e3
    move-exception v3

    :try_start_1e4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_1e8
    .catchall {:try_start_1e4 .. :try_end_1e8} :catchall_46
.end method

.method public declared-synchronized restoreSome(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;[Ljava/lang/String;)I
    .registers 27

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v6, "performRestore"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "restoreSome token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " observer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " monitor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_6b

    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_41
    const-string/jumbo v3, " packages="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p5, :cond_73

    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4f
    const-string/jumbo v3, "RestoreSession"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-eqz v3, :cond_99

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Restore session already ended"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_68
    .catchall {:try_start_1 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_6b
    :try_start_6b
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    :cond_73
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p5

    array-length v4, v0

    :goto_7d
    if-ge v3, v4, :cond_93

    aget-object v18, p5, v3

    if-nez v13, :cond_91

    const-string/jumbo v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_89
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    :cond_91
    const/4 v13, 0x0

    goto :goto_89

    :cond_93
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4f

    :cond_99
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    if-eqz v3, :cond_ab

    const-string/jumbo v3, "RestoreSession"

    const-string/jumbo v4, "Session already timed out"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_6b .. :try_end_a8} :catchall_68

    const/4 v3, -0x1

    monitor-exit p0

    return v3

    :cond_ab
    :try_start_ab
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-eqz v3, :cond_b7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v3, :cond_c3

    :cond_b7
    const-string/jumbo v3, "RestoreSession"

    const-string/jumbo v4, "Ignoring restoreAll() with no restore set"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catchall {:try_start_ab .. :try_end_c0} :catchall_68

    const/4 v3, -0x1

    monitor-exit p0

    return v3

    :cond_c3
    :try_start_c3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_d5

    const-string/jumbo v3, "RestoreSession"

    const-string/jumbo v4, "Ignoring restoreAll() on single-package session"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d2
    .catchall {:try_start_c3 .. :try_end_d2} :catchall_68

    const/4 v3, -0x1

    monitor-exit p0

    return v3

    :cond_d5
    :try_start_d5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_dc} :catch_14f
    .catchall {:try_start_d5 .. :try_end_dc} :catchall_68

    move-result-object v5

    :try_start_dd
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v19

    monitor-enter v19
    :try_end_e6
    .catchall {:try_start_dd .. :try_end_e6} :catchall_68

    const/4 v14, 0x0

    :goto_e7
    :try_start_e7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v3, v3

    if-ge v14, v3, :cond_177

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v3, v3, v14

    iget-wide v6, v3, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v3, p1, v6

    if-nez v3, :cond_173

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    new-instance v3, Lcom/android/server/backup/params/RestoreParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, p5

    array-length v6, v0

    const/4 v7, 0x1

    if-le v6, v7, :cond_171

    const/4 v11, 0x1

    :goto_130
    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p1

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v11}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;Z)V

    iput-object v3, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_14b
    .catchall {:try_start_e7 .. :try_end_14b} :catchall_1a0

    :try_start_14b
    monitor-exit v19
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_68

    const/4 v3, 0x0

    monitor-exit p0

    return v3

    :catch_14f
    move-exception v12

    :try_start_150
    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to get transport name for restoreSome: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16e
    .catchall {:try_start_150 .. :try_end_16e} :catchall_68

    const/4 v3, -0x1

    monitor-exit p0

    return v3

    :cond_171
    const/4 v11, 0x0

    goto :goto_130

    :cond_173
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_e7

    :cond_177
    :try_start_177
    monitor-exit v19

    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Restore token "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " not found"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19d
    .catchall {:try_start_177 .. :try_end_19d} :catchall_68

    const/4 v3, -0x1

    monitor-exit p0

    return v3

    :catchall_1a0
    move-exception v3

    :try_start_1a1
    monitor-exit v19

    throw v3
    :try_end_1a3
    .catchall {:try_start_1a1 .. :try_end_1a3} :catchall_68
.end method
